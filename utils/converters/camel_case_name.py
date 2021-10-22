from collections.abc import Sequence
from dataclasses import dataclass
from typing import List


@dataclass
class CamelCaseName(Sequence):
    def __init__(self, components: List[str]):
        self.components = components

    def __getitem__(self, i: int) -> str:
        return self.components[i]

    def __len__(self) -> int:
        return len(self.components)
    
    def to_string(self, pascal_case=False, snake_case_between_numbers=True) -> str:
        result = ''

        if len(self) == 0:
            return result

        if pascal_case:
            result = self[0].capitalize()
        else:
            result = self[0].lower()

        if len(self) < 2:
            return result
        
        for comp in self[1:]:
            if snake_case_between_numbers and len(result) > 0 and len(comp) > 0:
                if result[-1].isdigit() and comp[0].isdigit():
                    result += "_"
            
            result += comp.capitalize()

        return result
