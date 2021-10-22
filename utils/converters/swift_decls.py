from dataclasses import dataclass
from typing import List

from converters.syntax_stream import SyntaxStream
from constants.constants import backticked_term

@dataclass
class SwiftDecl(object):
    name: str
    original_name: str

@dataclass
class SwiftEnumCaseDecl(SwiftDecl):
    pass

    def write(self, stream: SyntaxStream):
        stream.line(f'static let {backticked_term(self.name)} = {self.original_name}')
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
