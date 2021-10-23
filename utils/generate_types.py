# Utility to extract Swift-styled aliases of DirectX C types.

import sys
import argparse
import os
import subprocess
import shutil

from pathlib import Path
from typing import List
from platform import system
from pycparser import c_ast, parse_file
from contextlib import contextmanager

from constants.constants import DX_PREFIXES
from converters.swift_decls import SwiftDecl, SwiftEnumCaseDecl, SwiftEnumDecl, SwiftStructDecl
from converters.syntax_stream import SyntaxStream
from converters.compound_symbol_name import CompoundSymbolName
from converters.convert_enum_case_name import convert_enum_case_name

SOURCE_ROOT_PATH=Path(__file__).parents[1]
SCRIPTS_ROOT_PATH=Path(__file__).parent

# Utils

def path(root: Path | str, *args: List[Path]) -> Path:
    if root is Path:
        return root.joinpath(*args)

    return Path(root).joinpath(*args)

def srcroot_path(*args: List[Path]) -> Path:
    return path(SOURCE_ROOT_PATH, *args)

def scripts_path(*args: List[Path]) -> Path:
    return path(SCRIPTS_ROOT_PATH, *args)

def run_cl() -> bytes:
    input_path = scripts_path('directx.h')
    cl_args = [
        "cl",
        "/E",
        "/Za",
        "/Zc:wchar_t",
        input_path,
    ]

    return subprocess.check_output(cl_args, cwd=SCRIPTS_ROOT_PATH)

# Visitor / declaration collection

class SwiftDeclConverter:
    # Enum

    def convert_snake_case_name(self, name: str, prefix: str, pascal_case: bool = True) -> CompoundSymbolName:
        symbol_name = CompoundSymbolName\
            .from_snake_case(name)\
            .removing_prefixes(DX_PREFIXES)

        if len(prefix) > 0:
            symbol_name = symbol_name.prepending_component(prefix)

        if pascal_case:
            symbol_name = symbol_name.pascal_cased()
        else:
            symbol_name = symbol_name.camel_cased()

        return symbol_name

    def convert_enum_name(self, name: str, prefix="Dx") -> CompoundSymbolName:
        return self.convert_snake_case_name(name, prefix=prefix)
    
    def convert_enum_case(self, enum: c_ast.Enumerator, decl: c_ast.Enumerator) -> SwiftEnumCaseDecl:
        return SwiftEnumCaseDecl(
            convert_enum_case_name(enum, decl.name),
            CompoundSymbolName.from_snake_case(decl.name)
        )

    def convert_enum(self, decl: c_ast.Enum) -> SwiftEnumDecl:
        cases = map(lambda d: self.convert_enum_case(decl, d), decl.values)

        # Detect reserved values and ignore them early
        cases = filter(lambda c: not c.name.startswith('Reserved'), cases)

        return SwiftEnumDecl(
            self.convert_enum_name(decl.name),
            CompoundSymbolName.from_snake_case(decl.name),
            list(cases)
        )

    # Struct

    def convert_struct_name(self, name: str, prefix="Dx") -> str:
        return self.convert_snake_case_name(name, prefix=prefix)
    
    def convert_struct(self, decl: c_ast.Struct) -> SwiftStructDecl:
        return SwiftStructDecl(
            self.convert_struct_name(decl.name),
            CompoundSymbolName.from_snake_case(decl.name)
        )

    #

    def convert(self, decl: c_ast.Node) -> SwiftDecl | None:
        match decl:
            case c_ast.Struct(): return self.convert_struct(decl)
            case c_ast.Enum(): return self.convert_enum(decl)

        return None
        
    def convert_list(self, decls: List[c_ast.Node]) -> List[SwiftDecl]:
        result = []
        for decl in decls:
            swift_decl = self.convert(decl)
            if swift_decl is not None:
                result.append(swift_decl)
        
        return result

class DeclGeneratorTarget:
    def prepare(self):
        pass

    @contextmanager
    def create_stream(self, _: SwiftDecl) -> SyntaxStream:
        raise NotImplementedError('Must be overloaded by subclasses.')

class DeclFileGeneratorDiskTarget(DeclGeneratorTarget):
    def __init__(self, destination_folder: Path, rm_folder: bool = True):
        self.destination_folder = destination_folder
        self.rm_folder = rm_folder
    
    def prepare(self):
        if self.rm_folder:
            shutil.rmtree(self.destination_folder)
            os.mkdir(self.destination_folder)

    @contextmanager
    def create_stream(self, decl: SwiftDecl) -> SyntaxStream:
        file_name = f"{decl.name.to_string()}.swift"
        file_path = self.destination_folder.joinpath(file_name)

        with open(file_path, 'w') as file:
            stream = SyntaxStream(file)
            yield stream

class DeclFileGeneratorStdoutTarget(DeclGeneratorTarget):
    @contextmanager
    def create_stream(self, decl: SwiftDecl) -> SyntaxStream:
        stream = SyntaxStream(sys.stdout)
        yield stream

class DeclFileGenerator:
    def __init__(self, target: DeclGeneratorTarget, decls: List[SwiftDecl]):
        self.target = target
        self.decls = decls

    def generate_file(self, decl: SwiftDecl):
        with self.target.create_stream(decl) as stream:
            # Write required boilerplate
            stream.line("// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators.")
            stream.line()
            stream.line("import WinSDK")
            stream.line()

            decl.write(stream)

    def generate(self):
        self.target.prepare()
        
        for decl in self.decls:
            self.generate_file(decl)

class DeclCollectorVisitor(c_ast.NodeVisitor):
    decls: List[c_ast.Node] = []

    def should_include(self, decl_name: str) -> bool:
        for prefix in DX_PREFIXES:
            if decl_name.startswith(prefix):
                return True
        
        return False
    
    def visit_Struct(self, node: c_ast.Struct):
        if node.name is not None and self.should_include(node.name):
            self.decls.append(node)
    
    def visit_Enum(self, node: c_ast.Enum):
        if node.name is not None and self.should_include(node.name):
            self.decls.append(node)


# Entry point

def main() -> int:
    DEST_PATH = srcroot_path('Sources', 'SwiftDx', 'Generated')

    parser = argparse.ArgumentParser(
        description='Generates .swift files wrapping DirectX declarations found in public Windows SDK headers.'
    )

    parser.add_argument(
        '--stdout',
        action='store_true',
        help='Outputs files to stdout instead of file disk.'
    )

    args = parser.parse_args()

    if system() != "Windows":
        print("This generator script requires a Windows operating system.")
        exit(1)

    if os.environ.get("UniversalCRTSdkDir") is None:
        print("Missing %UniversalCRTSdkDir% environment variable. Please run this script from a Visual Studio Developer Command Prompt (more info at https://docs.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2019)")
        exit(1)
    if os.environ.get("UCRTVersion") is None:
        print("Missing %UCRTVersion% environment variable. Please run this script from a Visual Studio Developer Command Prompt (more info at https://docs.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2019)")
        exit(1)
    
    # sdk_dir = Path(os.environ.get("UniversalCRTSdkDir"))
    # ucrt_version = Path(os.environ.get("UCRTVersion"))
    # include_dir = sdk_dir.joinpath("Include", ucrt_version)

    print('Generating header file...')

    output_file = run_cl()
    output_file = output_file.replace(b'\x0c', b'')
    
    output_path = scripts_path('directx.i')
    with open(output_path, 'wb') as f:
        f.write(output_file)

    print('Parsing generated header file...')

    ast = parse_file(output_path, use_cpp=False)

    print('Collecting Swift type candidates...')

    visitor = DeclCollectorVisitor()
    visitor.visit(ast)

    converter = SwiftDeclConverter()
    swift_decls = converter.convert_list(visitor.decls)

    target: DeclGeneratorTarget

    if args.stdout:
        print('Generating .swift files to stdout...')
        target = DeclFileGeneratorStdoutTarget()
    else:
        print(f'Generating .swift files to {DEST_PATH}...')
        target = DeclFileGeneratorDiskTarget(DEST_PATH, rm_folder=True)
    
    generator = DeclFileGenerator(target, swift_decls)
    generator.generate()

    print('Success!')
    
    return 0


if __name__=='__main__':
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
