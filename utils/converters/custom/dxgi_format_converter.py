from constants.constants import DX_PREFIXES
from converters.compound_symbol_name import CompoundSymbolName

def convert_dxgi_enum_case(name: CompoundSymbolName) -> str:
    DECAPITALIZE=[
        'bias',
        'float',
        'force',
        'format',
        'sharedexp',
        'sint',
        'snorm',
        'typeless',
        'uint',
        'unknown',
        'unorm',
        
        # Multi-term strings
        *'sampler_feedback_min_mip_opaque'.split('_'),
        *'sampler_feedback_mip_region_used_opaque'.split('_'),
    ]

    common = CompoundSymbolName.from_snake_case('DXGI_FORMAT')
    (new_name, prefix) = name.removing_common(common)
    new_name = new_name.removing_prefixes(DX_PREFIXES)

    # De-capitalize parts of the string
    for index, comp in enumerate(new_name):
        if comp.string.lower() in DECAPITALIZE:
            new_name[index] = comp.lower()

    if prefix is not None:
        return f"{prefix.camel_cased().to_string()}_{new_name.to_string()}"
    
    return new_name.to_string()
