from dataclasses import dataclass
from typing import List

from utils.converters.syntax_stream import SyntaxStream
from utils.data.compound_symbol_name import CompoundSymbolName
from utils.constants.constants import backticked_term


@dataclass
class SwiftDecl(object):
    name: CompoundSymbolName
    original_name: CompoundSymbolName

    def write(self, stream: SyntaxStream):
        raise NotImplementedError("Must be overloaded by subclasses.")


@dataclass
class SwiftEnumCaseDecl(SwiftDecl):
    def write(self, stream: SyntaxStream):
        stream.line(
            f"static let {backticked_term(self.name.to_string())} = {self.original_name.to_string()}"
        )
        pass


@dataclass
class SwiftEnumDecl(SwiftDecl):
    cases: List[SwiftEnumCaseDecl]

    def write(self, stream: SyntaxStream):
        stream.line(
            f"typealias {self.name.to_string()} = {self.original_name.to_string()}"
        )
        stream.line()

        decl = f"public extension {self.name.to_string()}"

        if len(self.cases) == 0:
            stream.line(decl + " { }")
            return

        with stream.block(decl + " {"):
            for i, case in enumerate(self.cases):
                if i > 0:
                    stream.line()

                case.write(stream)


@dataclass
class SwiftStructDecl(SwiftDecl):
    def write(self, stream: SyntaxStream):
        stream.line(
            f"typealias {self.name.to_string()} = {self.original_name.to_string()}"
        )

        pass
