from data.swift_decls import SwiftDecl, SwiftTypealiasDecl, SwiftStructDecl
from pycparser import c_ast

class SwiftDeclMerger:
    """
    Merges Swift declarations that share a name
    """

    def merge(self, decls: list[SwiftDecl]) -> list[SwiftDecl]:
        decl_dict: dict[str, SwiftDecl] = dict()

        for decl in decls:
            decl_name = decl.name.to_string()
            existing = decl_dict.get(decl_name)
            if existing is not None:
                if typ_decl := self.try_merge_as_typealias(existing, decl):
                    decl_dict[decl_name] = typ_decl
                    continue
                if str_decl := self.try_merge_as_struct(existing, decl):
                    decl_dict[decl_name] = str_decl
                    continue

                existing_name = existing.name.to_string()
                existing_original = existing.original_name.to_string() if existing.original_name is not None else "<none>"
                decl_original = decl.original_name.to_string() if decl.original_name is not None else "<none>"

                raise BaseException(
                    f"Found two symbols that share the same name but are of different types: {existing_name} (type: {type(existing)}) (originally: {existing_original}) and {decl_name} (type: {type(decl)}) (originally: {decl_original})"
                )

            else:
                decl_dict[decl_name] = decl

        return list(decl_dict.values())

    def try_merge_as_typealias(
        self, decl1: SwiftDecl, decl2: SwiftDecl
    ) -> SwiftTypealiasDecl | None:

        if isinstance(decl1, SwiftTypealiasDecl) and isinstance(decl2, SwiftTypealiasDecl):
            return decl1

        return None

    def try_merge_as_struct(
        self, decl1: SwiftDecl, decl2: SwiftDecl
    ) -> SwiftStructDecl | None:

        if isinstance(decl1, SwiftStructDecl) and isinstance(decl2, SwiftStructDecl):
            return decl1

        return None

    def choose_nodes(self, node1: c_ast.Node | None, node2: c_ast.Node | None) -> c_ast.Node | None:
        if node1 is None:
            return node2
        if node2 is None:
            return node1

        # Choose the source node that has members, if possible
        match (node1, node2):
            case (c_ast.Struct(), c_ast.Struct()):
                if node1.decls is None:
                    return node2
                if node2.decls is None:
                    return node1

        return node1
