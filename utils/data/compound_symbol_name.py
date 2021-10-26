from collections.abc import Sequence
from dataclasses import dataclass
from typing import Optional, Tuple


@dataclass(repr=False)
class CompoundSymbolName(Sequence):
    """
    A type that is used to describe a symbol name as a collection of words
    that are stitched together as a string to produce a final identifier name.

    Can be used for camelCase, PascalCase, and snake_case strings.
    """

    @dataclass(repr=False)
    class Component:
        """
        A component of a CompoundSymbolName.
        """

        string: str
        "The string of this component"

        prefix: Optional[str] = None
        "An optional prefix that is prepended to this component when producing full strings."

        suffix: Optional[str] = None
        "An optional suffix that is appended to this component when producing full strings."

        joint_to_prev: Optional[str] = None
        "A string that is appended to this component if it follows another component in a symbol name."

        def __repr__(self) -> str:
            return f"CompoundSymbolName.Component(string={self.string}, prefix={self.prefix}, prefix={self.suffix}, " \
                   f"prefix={self.joint_to_prev})"

        def copy(self) -> "CompoundSymbolName.Component":
            return CompoundSymbolName.Component(
                self.string, self.prefix, self.suffix, self.joint_to_prev
            )

        def with_string_only(self) -> "CompoundSymbolName.Component":
            """Returns a copy of this component with the same self.string, but nil prefix, suffix, and joint_to_prev."""

            return CompoundSymbolName.Component(self.string)

        def with_prefix(self, prefix: str) -> "CompoundSymbolName.Component":
            return CompoundSymbolName.Component(
                self.string, prefix, self.suffix, self.joint_to_prev
            )

        def with_string(self, string: str) -> "CompoundSymbolName.Component":
            return CompoundSymbolName.Component(
                string, self.prefix, self.suffix, self.joint_to_prev
            )

        def with_suffix(self, suffix: str) -> "CompoundSymbolName.Component":
            return CompoundSymbolName.Component(
                self.string, self.prefix, suffix, self.joint_to_prev
            )

        def with_joint_to_prev(self, joint_to_prev: str):
            return CompoundSymbolName.Component(
                self.string, self.prefix, self.suffix, joint_to_prev
            )

        def lower(self) -> "CompoundSymbolName.Component":
            """
            Returns a copy of this component with all available strings lowercased.

            >>> CompoundSymbolName.Component(string='SyMBol').lower().to_string(has_previous=False)
            'symbol'

            >>> CompoundSymbolName.Component(string='SyMBol', prefix='pRef', suffix='SuFF', joint_to_prev='_Prev').lower().to_string(has_previous=True)
            '_prevprefsymbolsuff'
            """

            prefix = self.prefix.lower() if self.prefix is not None else None
            suffix = self.suffix.lower() if self.suffix is not None else None
            joint_to_prev = (
                self.joint_to_prev.lower() if self.joint_to_prev is not None else None
            )

            return CompoundSymbolName.Component(
                self.string.lower(), prefix, suffix, joint_to_prev
            )

        def upper(self) -> "CompoundSymbolName.Component":
            """
            Returns a copy of this component with all available strings uppercased.

            >>> CompoundSymbolName.Component(string='SyMBol').upper().to_string(has_previous=False)
            'SYMBOL'

            >>> CompoundSymbolName.Component(string='SyMBol', prefix='pRef', suffix='SuFF', joint_to_prev='_Prev').upper().to_string(has_previous=True)
            '_PREVPREFSYMBOLSUFF'
            """

            prefix = self.prefix.upper() if self.prefix is not None else None
            suffix = self.suffix.upper() if self.suffix is not None else None
            joint_to_prev = (
                self.joint_to_prev.upper() if self.joint_to_prev is not None else None
            )

            return CompoundSymbolName.Component(
                self.string.upper(), prefix, suffix, joint_to_prev
            )

        def to_string(self, has_previous: bool) -> str:
            """
            Returns a string representation of this component.

            Prefix, suffix and joint strings are only emitted if they are present:

            >>> CompoundSymbolName.Component(string='symbol').to_string(has_previous=False)
            'symbol'

            >>> CompoundSymbolName.Component(string='symbol', prefix='pref', suffix='suff').to_string(has_previous=False)
            'prefsymbolsuff'

            If the component has a 'joint_to_prev', it is appended only if has_previous is True:

            >>> CompoundSymbolName.Component(string='symbol', prefix='pref', joint_to_prev='_').to_string(has_previous=True)
            '_prefsymbol'
            """

            result = ""

            if has_previous and self.joint_to_prev is not None:
                result += self.joint_to_prev

            if self.prefix is not None:
                result += self.prefix

            result += self.string

            if self.suffix is not None:
                result += self.suffix

            return result

    def __init__(self, components: list[Component]):
        if components is None:
            components = []

        for comp in components:
            assert isinstance(comp, CompoundSymbolName.Component)

        self.components = components

    def __getitem__(self, index):
        return self.components[index]

    def __setitem__(self, index, item):
        self.components[index] = item

    def __len__(self) -> int:
        return len(self.components)

    def __iter__(self):
        return self.components.__iter__()

    def __repr__(self) -> str:
        if len(self.components) == 0:
            return "CompoundSymbolName(components=[])"

        body = ",\n    ".join(map(lambda c: f"{c}", self.components))
        return f"CompoundSymbolName(components=[\n    {body}\n])"

    def from_string_list(*strings: str) -> "CompoundSymbolName":
        components = map(lambda s: CompoundSymbolName.Component(s), strings)

        return CompoundSymbolName(list(components))

    @staticmethod
    def from_snake_case(string: str) -> "CompoundSymbolName":
        components = map(
            lambda s: CompoundSymbolName.Component(s, joint_to_prev="_"),
            string.split("_"),
        )

        return CompoundSymbolName(list(components))

    def copy(self) -> "CompoundSymbolName":
        return CompoundSymbolName(
            components=list(map(lambda c: c.copy(), self.components))
        )

    def startswith(self, string: str) -> bool:
        """
        Returns True if the computed string for this symbol name starts with a provided string.

        >>> name = CompoundSymbolName.from_snake_case('D3D12_DRED_VERSION')
        >>> name.startswith('D3D12')
        True
        >>> name.startswith('D3D12_DRED')
        True
        >>> name.startswith('DXGI')
        False

        If the symbol name is empty, only empty strings match:

        >>> name = CompoundSymbolName([])
        >>> name.startswith('D3D12')
        False
        >>> name.startswith('')
        True
        """

        if len(self) == 0:
            return string == ""

        return self.to_string().startswith(string)

    def adding_component(
            self,
            string: str,
            prefix: str | None = None,
            suffix: str | None = None,
            joint_to_prev: str | None = None,
    ) -> "CompoundSymbolName":
        copy = self.copy()
        copy.components.append(
            CompoundSymbolName.Component(string, prefix, suffix, joint_to_prev)
        )
        return copy

    def prepending_component(
            self,
            string: str,
            prefix: str | None = None,
            suffix: str | None = None,
            joint_to_prev: str | None = None,
    ) -> "CompoundSymbolName":
        copy = self.copy()
        copy.components.insert(
            0, CompoundSymbolName.Component(string, prefix, suffix, joint_to_prev)
        )
        return copy

    def lower(self) -> "CompoundSymbolName":
        copy = self.copy()
        for i, comp in enumerate(copy):
            copy[i] = comp.lower()

        return copy

    def upper(self) -> "CompoundSymbolName":
        copy = self.copy()
        for i, comp in enumerate(copy):
            copy[i] = comp.upper()

        return copy

    def removing_prefixes(self, prefixes: list[str], case_sensitive=True) -> "CompoundSymbolName":
        """
        Returns a new CompoundSymbolName with any compound whose string matches a string in 'prefixes' removed.

        The matching can be done in a case-sensitive or insensitive manner according to the `case_sensitive` parameter.
        Defaults to case-sensitive.

        >>> name = CompoundSymbolName.from_snake_case('D3D12_DRED_VERSION')
        >>> name.removing_prefixes(['D3D12']).to_string()
        'DRED_VERSION'

        >>> name = CompoundSymbolName.from_snake_case('d3d12_dred_version')
        >>> name.removing_prefixes(['D3D12'], case_sensitive=False).to_string()
        'dred_version'
        """

        index = 0
        for comp in self:
            if not case_sensitive:
                for prefix in prefixes:
                    if comp.string.lower() == prefix.lower():
                        index += 1
                    else:
                        break
            else:
                if comp.string in prefixes:
                    index += 1
                else:
                    break

        return CompoundSymbolName(self.copy().components[index:])

    def removing_common(
            self, other: "CompoundSymbolName", detect_plurals: bool = True
    ) -> Tuple["CompoundSymbolName", Optional["CompoundSymbolName"]]:
        """
        Returns a new CompoundSymbolName with the common prefix between it and another CompoundSymbolName removed.

        In case the generated name would produce an invalid Swift identifier, like starting with a digit instead of a letter, an extra
        prefix is provided as a second element to the return's tuple:

        >>> enum      = CompoundSymbolName.from_snake_case('D3D12_DRED_VERSION')
        >>> enum_case = CompoundSymbolName.from_snake_case('D3D12_DRED_VERSION_1_0')
        >>> enum_case.removing_common(enum)
        (CompoundSymbolName(components=[
            CompoundSymbolName.Component(string=1, prefix=None, prefix=None, prefix=_),
            CompoundSymbolName.Component(string=0, prefix=None, prefix=None, prefix=_)
        ]),
        CompoundSymbolName(components=[
            CompoundSymbolName.Component(string=VERSION, prefix=None, prefix=None, prefix=_)
        ]))

        Optionally allows detecting differences in plurals, e.g.

        >>> enum      = CompoundSymbolName.from_snake_case('D3D12_RAY_FLAGS')
        >>> enum_case = CompoundSymbolName.from_snake_case('D3D12_RAY_FLAG_NONE')
        >>> enum_case.removing_common(enum, detect_plurals=True)[0]
        CompoundSymbolName(components=[
            CompoundSymbolName.Component(string=NONE, prefix=None, prefix=None, prefix=_)
        ])

        >>> enum_case.removing_common(enum, detect_plurals=False)[0]
        CompoundSymbolName(components=[
            CompoundSymbolName.Component(string=FLAG, prefix=None, prefix=None, prefix=_),
            CompoundSymbolName.Component(string=NONE, prefix=None, prefix=None, prefix=_)
        ])
        """

        new_name = CompoundSymbolName([])

        prefix_index = 0
        for index in range(min(len(self.components), len(other.components))):
            if detect_plurals:
                if self.components[index].string.lower() + "s" == other.components[index].string.lower():
                    prefix_index += 1
                    continue
                if self.components[index].string.lower() == other.components[index].string.lower() + "s":
                    prefix_index += 1
                    continue

            if self.components[index].string != other.components[index].string:
                break

            prefix_index += 1

        # Detect names starting with digits and relax the prefix index until we reach
        # a name that does not start with a digit.
        extra_prefix_index = prefix_index
        while extra_prefix_index > 0 and self.components[extra_prefix_index].string[0].isdigit():
            extra_prefix_index -= 1

        new_name.components = list(self.components[prefix_index:])

        if extra_prefix_index != prefix_index:
            prefix_name = CompoundSymbolName([])
            prefix_name.components = list(
                self.copy().components[extra_prefix_index:prefix_index]
            )

            return new_name, prefix_name
        else:
            return new_name, None

    def lower_snake_cased(self) -> "CompoundSymbolName":
        """
        Returns a new compound name where each component is a component from this
        compound name that when put together with to_string() forms a lower_case_snake_cased_string.

        >>> CompoundSymbolName.from_string_list('A', 'Symbol', 'Name').lower_snake_cased().to_string()
        'a_symbol_name'
        """

        result: list[CompoundSymbolName.Component] = []

        for comp in self.components:
            result.append(comp.with_string_only().lower().with_joint_to_prev("_"))

        return CompoundSymbolName(components=result)

    def pascal_cased(self) -> "CompoundSymbolName":
        """
        Returns a new compound name where each component is a component from this
        compound name that when put together with to_string() forms a PascalCaseString.

        >>> CompoundSymbolName.from_string_list('a', 'symbol', 'name').pascal_cased().to_string()
        'ASymbolName'
        """

        result: list[CompoundSymbolName.Component] = []

        for comp in self.components:
            new_comp = CompoundSymbolName.Component(comp.string.capitalize())

            result.append(new_comp)

        return CompoundSymbolName(components=result)

    def camel_cased(self, digit_separator: str | None = "_") -> "CompoundSymbolName":
        """
        Returns a new compound name where each component is a component from this
        compound name that when put together with to_string() forms a camelCaseString.

        >>> CompoundSymbolName.from_string_list('a', 'symbol', 'name').camel_cased().to_string()
        'aSymbolName'

        If two adjacent components have digits on each end, digit_separator will be added as a
        joint to the second component:

        >>> CompoundSymbolName.from_string_list('target', '1', '0').camel_cased().to_string()
        'target1_0'
        """

        result: list[CompoundSymbolName.Component] = []

        for i, comp in enumerate(self.components):
            new_comp = comp.with_string_only().lower()

            if i > 0:
                new_comp.string = new_comp.string.capitalize()
                if (
                        new_comp.to_string(True)[0].isdigit()
                        and self.components[i - 1].to_string(i > 1)[-1].isdigit()
                ):
                    new_comp = new_comp.with_joint_to_prev(digit_separator)

            result.append(new_comp)

        return CompoundSymbolName(components=result)

    def to_string(self) -> str:
        return "".join(
            map(lambda c: c[1].to_string(c[0] > 0), enumerate(self.components))
        )


if __name__ == "__main__":
    import doctest

    doctest.testmod(optionflags=doctest.NORMALIZE_WHITESPACE)