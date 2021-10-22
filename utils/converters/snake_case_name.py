from collections.abc import Sequence
from dataclasses import dataclass
from typing import List, Optional, Tuple

from converters.camel_case_name import CamelCaseName
from constants.constants import DX_PREFIXES

@dataclass
class SnakeCaseName(Sequence):
    components: List[str]

    def __init__(self, name: str = ''):
        self.components = name.split('_')
    
    def __getitem__(self, i: int) -> str:
        return self.components[i]
    
    def __setitem__(self, i: int, item: str):
        self.components[i] = item

    def __len__(self) -> int:
        return len(self.components)
    
    def removing_common(self, other: 'SnakeCaseName', detect_plurals: bool = True) -> Tuple['SnakeCaseName', Optional['SnakeCaseName']]:
        """
        Returns a new SnakeCaseName with the common prefix between it and another SnakeCaseName removed.

        In case the generated name would produce an invalid Swift identifier, like starting with a digit instead of a letter, an extra
        prefix is provided as a second element to the return's tuple:

        ```
        enum      = SnakeCaseName('D3D12_DRED_VERSION')
        enum_case = SnakeCaseName('D3D12_DRED_VERSION_1_0')

        print(enum_case.removing_common(enum)) # Prints: (SnakeCaseName(components=['1', '0']), SnakeCaseName(components=['VERSION']))
        ```
        
        Optionally allows detecting differences in plurals, e.g.
        
        ```
        enum      = SnakeCaseName('D3D12_RAY_FLAGS')
        enum_case = SnakeCaseName('D3D12_RAY_FLAG_NONE')
        
        print(enum_case.removing_common(enum, detect_plurals=True)[0])  # Prints: 'SnakeCaseName(components=['NONE'])'
        print(enum_case.removing_common(enum, detect_plurals=False)[0]) # Prints: 'SnakeCaseName(components=['FLAG', 'NONE'])'
        ```
        """

        new_name = SnakeCaseName()

        prefix_index = 0
        for index in range(min(len(self.components), len(other.components))):
            if detect_plurals:
                if self.components[index].lower() + "s" == other.components[index].lower():
                    prefix_index += 1
                    continue
                if self.components[index].lower() == other.components[index].lower() + "s":
                    prefix_index += 1
                    continue
            
            if self.components[index] != other.components[index]:
                break

            prefix_index += 1
        
        # Detect names starting with digits and relax the prefix index until we reach
        # a name that does not start with a digit.
        extra_prefix_index = prefix_index
        while extra_prefix_index > 0 and self.components[extra_prefix_index][0].isdigit():
            extra_prefix_index -= 1

        new_name.components = list(self.components[prefix_index:])

        if extra_prefix_index != prefix_index:
            prefix_name = SnakeCaseName()
            prefix_name.components = list(self.components[extra_prefix_index:prefix_index])

            return (new_name, prefix_name)
        else:
            return (new_name, None)

    def camel_cased(self, prefix: str | None = None) -> CamelCaseName:
        new_name = CamelCaseName([])
        
        for component in self.components:
            if component in DX_PREFIXES:
                if prefix is not None:
                    new_name.components.append(prefix)
                
                continue
            
            new_name.components.append(component)
        
        return new_name
    
    def to_string(self) -> str:
        return '_'.join(self.components)
