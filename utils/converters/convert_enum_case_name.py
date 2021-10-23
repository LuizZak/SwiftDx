from pycparser import c_ast

from constants.constants import DX_PREFIXES
from converters.compound_symbol_name import CompoundSymbolName
from converters.custom.dxgi_format_converter import convert_dxgi_enum_case

def convert_enum_case_name(enum: c_ast.Enum, name: str) -> CompoundSymbolName:
    type_name = CompoundSymbolName.from_snake_case(enum.name)
    case_name = CompoundSymbolName.from_snake_case(name)

    if enum.name == "DXGI_FORMAT":
        return convert_dxgi_enum_case(case_name)
    
    (new_name, prefix) = case_name.removing_common(type_name)
    new_name = new_name.removing_prefixes(DX_PREFIXES)
    new_name = new_name.camel_cased()

    if prefix is not None:
        prefix = prefix.camel_cased()
        new_name[0].joint_to_prev = '_'
        
        return CompoundSymbolName(components=prefix.components + new_name.components)

    return new_name
