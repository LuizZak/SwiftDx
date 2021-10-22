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
    
    def to_string(self, pascal_case=False) -> str:
        if pascal_case:
            return ''.join(map(lambda c: c.capitalize(), self.components))

        if len(self.components) < 2:
            return self.components[0].lower()
        
        return self.components[0].lower() + ''.join(map(lambda c: c.capitalize(), self.components[1:]))
