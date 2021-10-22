from pycparser import c_ast

from converters.snake_case_name import SnakeCaseName
from converters.custom.dxgi_format_converter import convert_dxgi_enum_case

def convert_enum_case_name(enum: c_ast.Enum, name: str) -> str:
    type_name = SnakeCaseName(enum.name)
    case_name = SnakeCaseName(name)

    if enum.name == "DXGI_FORMAT":
        return convert_dxgi_enum_case(case_name)
    
    (new_name, prefix) = case_name.removing_common(type_name)
    new_name = new_name.camel_cased().to_string()

    if prefix is not None:
        return f"{prefix.camel_cased().to_string()}_{new_name}"

    return new_name
