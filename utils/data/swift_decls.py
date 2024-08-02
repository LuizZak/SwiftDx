from dataclasses import dataclass
from enum import Enum
from typing import List

from converters.syntax_stream import SyntaxStream
from data.backticked_term import backticked_term
from data.compound_symbol_name import CompoundSymbolName

class AccessLevel(Enum):
    PRIVATE = 0
    FILEPRIVATE = 1
    INTERNAL = 2
    PACKAGE = 3
    PUBLIC = 4
    OPEN = 5

    def write(self, stream: SyntaxStream):
        cls = AccessLevel

        if self == cls.PRIVATE:
            stream.write("private")
        elif self == cls.FILEPRIVATE:
            stream.write("fileprivate")
        elif self == cls.INTERNAL:
            stream.write("internal")
        elif self == cls.PACKAGE:
            stream.write("package")
        elif self == cls.PUBLIC:
            stream.write("public")
        elif self == cls.OPEN:
            stream.write("open")

@dataclass
class SwiftDecl(object):
    name: CompoundSymbolName
    original_name: CompoundSymbolName
    access_level: AccessLevel

    def write(self, stream: SyntaxStream):
        raise NotImplementedError("Must be overloaded by subclasses.")

    def write_access_level(self, stream: SyntaxStream):
        stream.emit_indentation()
        self.access_level.write(stream)
        stream.write(" ")


@dataclass
class SwiftEnumCaseDecl(SwiftDecl):
    def write(self, stream: SyntaxStream):
        # self.write_access_level(stream) # Inherit access level of declaration
        stream.line(
            f"static let {backticked_term(self.name.to_string())} = {self.original_name.to_string()}"
        )
        pass


@dataclass
class SwiftEnumDecl(SwiftDecl):
    cases: List[SwiftEnumCaseDecl]

    def write(self, stream: SyntaxStream):
        self.write_access_level(stream)
        stream.line(
            f"typealias {self.name.to_string()} = {self.original_name.to_string()}"
        )
        stream.line()

        self.write_access_level(stream)
        decl = f"extension {self.name.to_string()}"

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
        self.write_access_level(stream)
        stream.line(
            f"typealias {self.name.to_string()} = {self.original_name.to_string()}"
        )

        pass


@dataclass
class SwiftTypealiasDecl(SwiftDecl):
    def write(self, stream: SyntaxStream):
        self.write_access_level(stream)
        stream.line(
            f"typealias {self.name.to_string()} = {self.original_name.to_string()}"
        )

        pass
