from utils.data.compound_symbol_name import CompoundSymbolName
from utils.converters.custom.dxgi_format_converter import convert_dxgi_enum_case


def convert_enum_case_name(enum_name: CompoundSymbolName, enum_original_name: str, name: str, prefixes: list[str]) -> CompoundSymbolName:
    case_name = CompoundSymbolName.from_snake_case(name)

    if enum_original_name == "DXGI_FORMAT":
        return convert_dxgi_enum_case(case_name, prefixes)

    orig_enum_name = CompoundSymbolName.from_snake_case(enum_original_name)

    (new_name, prefix) = case_name.removing_common(orig_enum_name)
    new_name = new_name.removing_prefixes(prefixes)
    new_name = new_name.camel_cased()

    if prefix is not None:
        prefix = prefix.camel_cased()
        new_name[0].joint_to_prev = "_"

        return CompoundSymbolName(components=prefix.components + new_name.components)

    return new_name
