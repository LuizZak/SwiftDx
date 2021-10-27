import re
from typing import Tuple

from utils.collection.collection_utils import flatten
from utils.converters.name_capitalizer import NameCapitalizer
from utils.data.compound_symbol_name import CompoundSymbolName
from utils.data.compound_symbol_name import ComponentCase

# TODO: Support splitting single words into multiple components on a symbol name.

TERMS_TO_CAPITALIZE: list[str] = [
    r"YCbCr",
    r"SRGB",
    r"YUV",
    r"RGB",
    r"HDR",
    r"HUE",
    r"SVG",
    r"3D",
    r"2D",
]


class DefaultNameCapitalizer(NameCapitalizer):
    def capitalize(self, name: CompoundSymbolName) -> CompoundSymbolName:
        components = flatten(map(
            self.split_component,
            name.components
        ))

        if len(name.components) > 0:
            is_camel_case = name.components[0].to_string(False)[0].islower()

            if is_camel_case and len(components) > 0:
                components[0] = components[0].with_string_case(ComponentCase.LOWER)

        return CompoundSymbolName(components)

    def split_component(self, component: CompoundSymbolName.Component) -> list[CompoundSymbolName.Component]:
        split_string = self.split_component_string(component.string, has_prev=False)

        return list(map(lambda t: component.with_string(t[0]).with_string_case(t[1]), split_string))

    def split_component_string(self, string: str, has_prev: bool) -> list[Tuple[str, ComponentCase]]:
        result: list[Tuple[str, ComponentCase]] = []
        leftmost_interval: Tuple[str, int, int] | None = None

        for term in TERMS_TO_CAPITALIZE:
            pattern = re.compile(f"({term})", flags=re.IGNORECASE)

            for match in pattern.finditer(string):
                if leftmost_interval is None or match.start() < leftmost_interval[1]:
                    leftmost_interval = (term, match.start(), match.end())
                else:
                    break

        if leftmost_interval is None:
            if has_prev:
                string = string[0].upper() + string[1:]

            return [(string, ComponentCase.ANY)]

        if leftmost_interval[1] > 0:
            result.extend(self.split_component_string(string[0:leftmost_interval[1]], has_prev=has_prev))

        result.append((leftmost_interval[0], ComponentCase.AS_IS))

        if leftmost_interval[2] < len(string) - 1:
            result.extend(self.split_component_string(string[leftmost_interval[2]:], has_prev=True))

        return result
