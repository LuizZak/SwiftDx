# Utility to extract Swift-styled aliases of DirectX C types.

from contextlib import contextmanager
import sys
import argparse
import os
import subprocess
import shutil

from pathlib import Path
from typing import List, TextIO
from platform import system
from dataclasses import dataclass
from pycparser import c_ast, parse_file

SOURCE_ROOT_PATH=Path(__file__).parents[1]
SCRIPTS_ROOT_PATH=Path(__file__).parent
DX_PREFIXES = ["DXGI", "D3D12"]

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

class SyntaxStream:
    def __init__(self, dest: TextIO):
        self.dest = dest
        self.indent_depth = 0
    
    def write(self, text: str):
        self.dest.write(text)
    
    def indent_str(self) -> str:
        return '    ' * self.indent_depth

    def line(self, text: str = ''):
        self.write(f'{self.indent_str()}{text}\n')
    
    def indent(self):
        self.indent_depth += 1
    
    def unindent(self):
        self.indent_depth -= 1
    
    @contextmanager
    def block(self, line: str):
        self.line(line)
        self.indent()
        yield
        self.unindent()
        self.line("}")

# Visitor / declaration collection

@dataclass
class SwiftDecl(object):
    name: str
    original_name: str

@dataclass
class SwiftEnumCaseDecl(SwiftDecl):
    pass

    def write(self, stream: SyntaxStream):
        stream.line(f'static var {self.name} = {self.original_name}')
        pass

@dataclass
class SwiftEnumDecl(SwiftDecl):
    cases: List[SwiftEnumCaseDecl]

    def write(self, stream: SyntaxStream):
        stream.line(f"typealias {self.name} = {self.original_name}")
        stream.line()

        decl = f"public extension {self.name}"

        if len(self.cases) == 0:
            stream.line(decl + " { }")
            return

        with stream.block(decl + " {"):
            for i, case in enumerate(self.cases):
                if i > 0:
                    stream.line()
                
                case.write(stream)

@dataclass
class SnakeCaseName:
    components: List[str]

    def __init__(self, name: str = ''):
        self.components = name.split('_')
    
    def removing_common(self, other: 'SnakeCaseName') -> 'SnakeCaseName':
        new_name = SnakeCaseName()

        prefix_index = 0
        for index in range(min(len(self.components), len(other.components))):
            if self.components[index] != other.components[index]:
                break
            
            prefix_index += 1
        
        # Detect names starting with digits and relax the prefix index until we reach
        # a name that does not start with a digit.
        while prefix_index > 0 and self.components[prefix_index][0].isdigit():
            prefix_index -= 1

        new_name.components = self.components[prefix_index:]

        return new_name

    def camel_cased(self, prefix: str | None = None) -> 'SnakeCaseName':
        new_name = SnakeCaseName()
        
        for component in self.components:
            if component in DX_PREFIXES:
                if prefix is not None:
                    new_name.components.append(prefix)
                
                continue
            
            new_name.components.append(component.capitalize())
        
        return new_name
    
    def to_string(self) -> str:
        return ''.join(self.components)

class SwiftDeclConverter:
    def convert_snake_case_name(self, name: str, prefix: str) -> str:
        return SnakeCaseName(name).camel_cased(prefix).to_string()

    def convert_enum_name(self, name: str, prefix="Dx") -> str:
        return self.convert_snake_case_name(name, prefix=prefix)
    
    def convert_enum_case_name(self, enum: c_ast.Enumerator, name: str) -> str:
        type_name = SnakeCaseName(enum.name)
        case_name = SnakeCaseName(name)

        return case_name.removing_common(type_name).camel_cased().to_string()
    
    def convert_enum_case(self, enum: c_ast.Enumerator, decl: c_ast.Enumerator) -> SwiftEnumCaseDecl:
        return SwiftEnumCaseDecl(self.convert_enum_case_name(enum, decl.name), decl.name)

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

    def generate_file(self, decl: SwiftEnumDecl):
        file_name = f"{decl.name}.swift"
        file_path = self.destination_folder.joinpath(file_name)

        with open(file_path, 'w') as file:
            stream = SyntaxStream(file)
            # Write required boilerplate
            stream.line("import WinSDK")
            stream.line()

            decl.write(stream)

        return

    def generate(self, rm_folder: bool = True):
        if rm_folder:
            shutil.rmtree(self.destination_folder)
            os.mkdir(self.destination_folder)
        
        for decl in self.decls:
            match decl:
                case SwiftEnumDecl(): self.generate_file(decl)

        return

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
