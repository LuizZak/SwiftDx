# Utility to extract Swift-styled aliases of DirectX C types.

import sys
import os
import subprocess
import shutil
from dataclasses import dataclass

import pycparser

from pathlib import Path
from typing import List
from pycparser import c_ast
from contextlib import contextmanager

from utils.converters.default_name_capitalizer import DefaultNameCapitalizer
from utils.converters.name_capitalizer import NameCapitalizer
from utils.converters.syntax_stream import SyntaxStream
from utils.converters.convert_enum_case_name import convert_enum_case_name
from utils.data.compound_symbol_name import CompoundSymbolName
from utils.data.swift_decls import SwiftDecl, SwiftEnumCaseDecl, SwiftEnumDecl, SwiftStructDecl
from utils.directory_structure.directory_structure_manager import DirectoryStructureManager
from utils.data.swift_file import SwiftFile

# Utils
from utils.paths import paths


def run_cl(input_path: Path) -> bytes:
    cl_args = [
        "cl",
        "/E",
        "/Za",
        "/Zc:wchar_t",
        input_path,
    ]

    return subprocess.check_output(cl_args, cwd=paths.SCRIPTS_ROOT_PATH)


# Visitor / declaration collection

class SwiftDeclConverter:
    def __init__(self, prefixes: list[str], capitalizer: NameCapitalizer):
        self.prefixes = prefixes
        self.capitalizer = capitalizer

    @staticmethod
    def prefix_for_decl_name(name: str) -> str:
        if name.startswith("DXGI"):
            return "Dxgi"
        elif name.startswith("D3D_"):
            return "D3"
        elif name.startswith("D2D"):
            return "D2"
        else:
            return "Dx"

    # Enum

    def convert_snake_case_name(self, name: str, prefix: str, pascal_case: bool = True) -> CompoundSymbolName:
        symbol_name = CompoundSymbolName \
            .from_snake_case(name) \
            .removing_prefixes(self.prefixes)

        if len(prefix) > 0:
            symbol_name = symbol_name.prepending_component(prefix)

        if pascal_case:
            symbol_name = symbol_name.pascal_cased()
        else:
            symbol_name = symbol_name.camel_cased()

        return symbol_name

    def convert_enum_name(self, name: str) -> CompoundSymbolName:
        prefix = self.prefix_for_decl_name(name)

        return self.capitalizer.capitalize(self.convert_snake_case_name(name, prefix=prefix))

    def convert_enum_case(self,
                          enum_name: CompoundSymbolName,
                          enum_original_name: str,
                          decl: c_ast.Enumerator) -> SwiftEnumCaseDecl:

        return SwiftEnumCaseDecl(
            self.capitalizer.capitalize(
                convert_enum_case_name(enum_name,
                                       enum_original_name,
                                       decl.name,
                                       self.prefixes)
            ),
            CompoundSymbolName.from_snake_case(decl.name)
        )

    def convert_enum(self, decl: c_ast.Enum) -> SwiftEnumDecl:
        enum_name = self.convert_enum_name(decl.name)

        cases = map(
            lambda d: self.convert_enum_case(enum_name, decl.name, d),
            decl.values
        )

        # Detect reserved values and ignore them early
        cases = filter(
            lambda c: not c.name.startswith('Reserved'),
            cases
        )

        return SwiftEnumDecl(
            enum_name,
            CompoundSymbolName.from_snake_case(decl.name),
            list(cases)
        )

    # Struct

    def convert_struct_name(self, name: str) -> CompoundSymbolName:
        prefix = self.prefix_for_decl_name(name)

        return self.capitalizer.capitalize(self.convert_snake_case_name(name, prefix=prefix))

    def convert_struct(self, decl: c_ast.Struct) -> SwiftStructDecl:
        return SwiftStructDecl(
            self.convert_struct_name(decl.name),
            CompoundSymbolName.from_snake_case(decl.name)
        )

    #

    def convert(self, decl) -> SwiftDecl | None:
        match decl:
            case c_ast.Struct():
                return self.convert_struct(decl)
            case c_ast.Enum():
                return self.convert_enum(decl)

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
    def create_stream(self, _: Path) -> SyntaxStream:
        raise NotImplementedError('Must be overridden by subclasses.')


class DeclFileGeneratorDiskTarget(DeclGeneratorTarget):
    def __init__(self, destination_folder: Path, rm_folder: bool = True, verbose: bool = True):
        self.destination_folder = destination_folder
        self.rm_folder = rm_folder
        self.directory_manager = DirectoryStructureManager(destination_folder)
        self.verbose = verbose

    def prepare(self):
        if self.verbose:
            print(f'Generating .swift files to {self.destination_folder}...')

        if self.rm_folder:
            shutil.rmtree(self.destination_folder)
            os.mkdir(self.destination_folder)

    @contextmanager
    def create_stream(self, path: Path) -> SyntaxStream:
        path.parent.mkdir(parents=True, exist_ok=True)

        with open(path, 'w', newline='\n') as file:
            stream = SyntaxStream(file)
            yield stream


class DeclFileGeneratorStdoutTarget(DeclGeneratorTarget):
    @contextmanager
    def create_stream(self, path: Path) -> SyntaxStream:
        stream = SyntaxStream(sys.stdout)
        yield stream


class DeclFileGenerator:
    def __init__(self, destination_folder: Path, target: DeclGeneratorTarget, decls: List[SwiftDecl]):
        self.destination_folder = destination_folder
        self.directory_manager = DirectoryStructureManager(destination_folder)
        self.target = target
        self.decls = decls

    def generate_file(self, file: SwiftFile):
        with self.target.create_stream(file.path) as stream:
            file.write(stream)

    def generate(self):
        self.target.prepare()

        files = self.directory_manager.make_declaration_files(self.decls)

        for file in files:
            self.generate_file(file)


# noinspection PyPep8Naming
class DeclCollectorVisitor(c_ast.NodeVisitor):
    decls: List[c_ast.Node] = []

    def __init__(self, prefixes: list[str]):
        self.prefixes = prefixes

    def should_include(self, decl_name: str) -> bool:
        for prefix in self.prefixes:
            if decl_name.startswith(prefix):
                return True

        return False

    def visit_Struct(self, node: c_ast.Struct):
        if node.name is not None and self.should_include(node.name):
            self.decls.append(node)

    def visit_Enum(self, node: c_ast.Enum):
        if node.name is not None and self.should_include(node.name):
            self.decls.append(node)


@dataclass
class TypeGeneratorRequest:
    header_file: Path
    destination: Path
    prefixes: list[str]
    target: DeclGeneratorTarget
    capitalizer: NameCapitalizer = DefaultNameCapitalizer()


def generate_types(request: TypeGeneratorRequest) -> int:
    print('Generating header file...')

    output_file = run_cl(request.header_file)
    output_file = output_file.replace(b'\x0c', b'')

    output_path = request.header_file.with_suffix(".i")
    with open(output_path, 'wb') as f:
        f.write(output_file)

    print('Parsing generated header file...')

    ast = pycparser.parse_file(output_path, use_cpp=False)

    print('Collecting Swift type candidates...')

    visitor = DeclCollectorVisitor(prefixes=request.prefixes)
    visitor.visit(ast)

    converter = SwiftDeclConverter(prefixes=request.prefixes, capitalizer=request.capitalizer)
    swift_decls = converter.convert_list(visitor.decls)

    generator = DeclFileGenerator(request.destination, request.target, swift_decls)
    generator.generate()

    print('Success!')

    return 0
