from typing import TextIO
from contextlib import contextmanager


class SyntaxStream:
    is_on_newline = True

    def __init__(self, destination: TextIO):
        self.destination = destination
        self.indent_depth = 0

    def write(self, text: str):
        self.destination.write(text)

        if len(text) > 0:
            if text.endswith("\n"):
                self.is_on_newline = True
            else:
                self.is_on_newline = False

    def indent_str(self) -> str:
        return "    " * self.indent_depth

    def line(self, text: str = ""):
        self.emit_indentation()
        self.write(f"{text}\n")

    def emit_indentation(self):
        if self.is_on_newline:
            self.write(self.indent_str())

        self.is_on_newline = False

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
