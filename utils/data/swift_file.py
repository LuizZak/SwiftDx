from dataclasses import dataclass
from pathlib import Path
from typing import List

from utils.converters.syntax_stream import SyntaxStream
from utils.data.swift_decls import SwiftDecl


@dataclass
class SwiftFile:
    """Represents a Swift file and its declarations."""

    path: Path
    decls: List[SwiftDecl]

    def add_decl(self, decl: SwiftDecl):
        self.decls.append(decl)

    def write(self, stream: SyntaxStream):
        # Write required boilerplate
        stream.line(
            "// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators."
        )
        stream.line()
        stream.line("import WinSDK")

        for decl in self.decls:
            stream.line()
            decl.write(stream)
