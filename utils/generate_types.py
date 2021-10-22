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

from converters.swift_decls import SwiftDecl, SwiftEnumCaseDecl, SwiftEnumDecl
from converters.syntax_stream import SyntaxStream
from converters.snake_case_name import SnakeCaseName, DX_PREFIXES
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
    def convert_snake_case_name(self, name: str, prefix: str, pascal_case: bool = True) -> str:
        return SnakeCaseName(name).camel_cased(prefix).to_string(pascal_case=pascal_case)

    def convert_enum_name(self, name: str, prefix="Dx") -> str:
        return self.convert_snake_case_name(name, prefix=prefix)
    
    def convert_enum_case(self, enum: c_ast.Enumerator, decl: c_ast.Enumerator) -> SwiftEnumCaseDecl:
        return SwiftEnumCaseDecl(convert_enum_case_name(enum, decl.name), decl.name)

    def convert_enum(self, decl: c_ast.Enum) -> SwiftEnumDecl:
        cases = map(lambda d: self.convert_enum_case(decl, d), decl.values)

        # Detect reserved values and ignore them early
        cases = filter(lambda c: not c.name.startswith('Reserved'), cases)

        return SwiftEnumDecl(
            self.convert_enum_name(decl.name),
            decl.name,
            list(cases)
        )

    def convert(self, decl: c_ast.Node) -> SwiftDecl | None:
        if isinstance(decl, c_ast.Enum):
            return self.convert_enum(decl)
        
        return None
        
    def convert_list(self, decls: List[c_ast.Node]) -> List[SwiftDecl]:
        result = []
        for decl in decls:
            swift_decl = self.convert(decl)
            if swift_decl is not None:
                result.append(swift_decl)
        
        return result


class DeclCollectorVisitor(c_ast.NodeVisitor):
    decls: List[c_ast.Node] = []

    def should_include(self, decl_name: str) -> bool:
        for prefix in DX_PREFIXES:
            if decl_name.startswith(prefix):
                return True
        
        return False

    def visit_Enum(self, node):
        if node.name is not None and self.should_include(node.name):
            self.decls.append(node)

class DeclFileGenerator:
    def __init__(self, destination_folder: Path, decls: List[SwiftDecl]):
        self.destination_folder = destination_folder
        self.decls = decls

    def generate_enum(self, decl: SwiftEnumDecl, stream: SyntaxStream):
        decl.write(stream)
    
    def generate_file(self, decl: SwiftDecl):
        file_name = f"{decl.name}.swift"
        file_path = self.destination_folder.joinpath(file_name)

        with open(file_path, 'w') as file:
            stream = SyntaxStream(file)

            # Write required boilerplate
            stream.line("// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators!")
            stream.line()
            stream.line("import WinSDK")
            stream.line()

            match decl:
                case SwiftEnumDecl():
                    self.generate_enum(decl, stream)

    def generate(self, rm_folder: bool = True):
        if rm_folder:
            shutil.rmtree(self.destination_folder)
            os.mkdir(self.destination_folder)
        
        for decl in self.decls:
            self.generate_file(decl)

# Entry point

def main() -> int:
    DEST_PATH = srcroot_path('Sources', 'SwiftDx', 'Generated')

    parser = argparse.ArgumentParser(
        description='Generates .swift files wrapping DirectX declarations found in public Windows SDK headers.'
    )

    parser.parse_args()

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

    print(f'Generating .swift files to {DEST_PATH}...')

    generator = DeclFileGenerator(DEST_PATH, swift_decls)
    generator.generate(rm_folder=True)

    print('Success!')
    
    return 0


if __name__=='__main__':
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
