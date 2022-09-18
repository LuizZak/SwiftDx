import re
from pathlib import Path
from typing import List, Iterable

from data.swift_decls import SwiftDecl
from data.swift_file import SwiftFile


class DirectoryStructureManager:
    """
    A class that is used to manage nested directory structures for generated types.

    Must call '.prepare()' before using other methods.
    """

    def __init__(self, path_matchers: dict[re.Pattern, list[str]]):
        self.path_matchers = path_matchers

    def prepare(self, base_path: Path):
        self.base_path = base_path

    def _assert_prepared(self):
        if self.base_path is None:
            print(
                "Attempted to use DirectoryStructureManager before calling .prepare() !"
            )
            exit(1)

    def make_declaration_files(self, decls: Iterable[SwiftDecl]) -> list[SwiftFile]:
        self._assert_prepared()

        result: dict[Path, SwiftFile] = dict()

        for decl in decls:
            path = self.path_for_decl(decl)
            file = result.get(path, SwiftFile(path, [], []))
            file.add_decl(decl)

            result[path] = file

        return list(result.values())

    def path_for_decl(self, decl: SwiftDecl) -> Path:
        self._assert_prepared()

        file_path = self.file_for_decl(decl)

        return file_path

    def folder_for_file(self, file_name: str) -> Path:
        self._assert_prepared()

        dir_path = self.base_path
        longest_path: List[str] = []

        for (p, path) in self.path_matchers.items():
            if p.match(file_name):
                if len(path) > len(longest_path):
                    longest_path = path

        return dir_path.joinpath(*longest_path)

    def file_for_decl(self, decl: SwiftDecl) -> Path:
        self._assert_prepared()

        decl_name = decl.name.to_string()
        # Remove a trailing digit, but only if it's the only digit on the suffix.
        # Some declarations use single digits to define separate interface versions, while others such as
        # D3D12_RANGE_UINT64 use two trailing digits as part of its declaration.
        if (
            len(decl_name) > 2
            and decl_name[-1].isdigit()
            and not decl_name[-2].isdigit()
        ):
            decl_name = decl_name[:-1]

        file_name = f"{decl_name}.swift"

        return self.folder_for_file(file_name).joinpath(file_name)
