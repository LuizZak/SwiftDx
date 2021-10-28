import re
from typing import Tuple

from utils.collection.collection_utils import flatten
from utils.converters.symbol_name_formatter import SymbolNameFormatter
from utils.data.compound_symbol_name import CompoundSymbolName
from utils.data.compound_symbol_name import ComponentCase

# TODO: Support splitting single words into multiple components on a symbol name.

TERMS_TO_CAPITALIZE: list[str] = [
    r"YCbCr",
    r"RLDO",
    r"SRGB",
    r"UInt",
    r"SInt",
    r"GPU",
    r"CPU",
    r"YUV",
    r"RGB",
    r"HDR",
    r"HUE",
    r"SVG",
    r"SRV",
    r"RTV",
    r"UAV",
    r"3D",
    r"2D",
    r"1D",
]


class DefaultSymbolNameFormatter(SymbolNameFormatter):
    def format(self, name: CompoundSymbolName) -> CompoundSymbolName:
        components = flatten(map(
            self.format_component,
            name.components
        ))

        if len(name.components) > 0:
            is_camel_case = name.components[0].to_string(False)[0].islower()

            if is_camel_case and len(components) > 0:
                components[0] = components[0].with_string_case(ComponentCase.LOWER)

        return CompoundSymbolName(components)

    def format_component(self, component: CompoundSymbolName.Component) -> list[CompoundSymbolName.Component]:
        split_string: list[str] = []
        self.split_component_inplace(component.string, split_string)

        split_components = flatten(
            map(
                lambda p: self.format_component_string(p[1], has_prev=p[0] > 0),
                enumerate(split_string)
            )
        )

        return list(
            map(
                lambda t: component.with_string(t[0]).with_string_case(component.string_case | t[1]),
                split_components
            )
        )

    def split_component_inplace(self, string: str, output: list[str]):
        for pattern in TERMS_TO_SPLIT:
            if pattern.search(string):
                filtered = filter(lambda x: x is not None and len(x) > 0, pattern.split(string))

                for word in filtered:
                    self.split_component_inplace(word, output)

                return

        output.append(string)

    def split_component_string(self, string: str) -> list[str]:
        for pattern in TERMS_TO_SPLIT:
            if pattern.match(string):
                filtered = filter(lambda x: len(x) > 0, pattern.split(string))

                return list(filtered)

        return [string]

    def format_component_string(self, string: str, has_prev: bool) -> list[Tuple[str, ComponentCase]]:
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
            result.extend(self.format_component_string(string[0:leftmost_interval[1]], has_prev=has_prev))

        result.append((leftmost_interval[0], ComponentCase.AS_IS))

        if leftmost_interval[2] < len(string) - 1:
            result.extend(self.format_component_string(string[leftmost_interval[2]:], has_prev=True))

        return result


# TODO: Figure out a better way to automatically recognize joined symbol name.
def to_single_term_regex(string: str) -> re.Pattern:
    return re.compile(f"(\\w+)({string})|({string})(\\w+)", flags=re.IGNORECASE)


TERMS_TO_SPLIT: list[re.Pattern] = [
    # Use multi-word regex when a standalone word might lead to unintended matches in compound words.
    # D2D1_COLORMANAGEMENT_PROP
    re.compile(r"(Color)(Management)", flags=re.IGNORECASE),
    # D3D_SRV_DIMENSION
    re.compile(r"(Buffer)(Ex)$", flags=re.IGNORECASE),
    re.compile(r"(MS)(Array)", flags=re.IGNORECASE),
    re.compile(r"(Texture)(Cube)($|Array)", flags=re.IGNORECASE),
    # D3D12_MESSAGE_ID terms
    re.compile(r"(Access)(View)", flags=re.IGNORECASE),
    re.compile(r"(Adapter|Driver)(Versions|Version)", flags=re.IGNORECASE),
    re.compile(r"(Allocation)(Info)", flags=re.IGNORECASE),
    re.compile(r"(And)(Component|Heap)", flags=re.IGNORECASE),
    re.compile(r"(As)(MS)(Payload)", flags=re.IGNORECASE),
    re.compile(r"(Back|Front)(Face)", flags=re.IGNORECASE),
    re.compile(r"(Base)(Offset)", flags=re.IGNORECASE),
    re.compile(r"(Bias)(Clamp)", flags=re.IGNORECASE),
    re.compile(r"(Blend)(Alpha)", flags=re.IGNORECASE),
    re.compile(r"(Blend)(Op)", flags=re.IGNORECASE),
    re.compile(r"(Blend)(State)", flags=re.IGNORECASE),
    re.compile(r"(Blob)(Adapter|Desc)", flags=re.IGNORECASE),
    re.compile(r"(Buffer)(References|Reference)", flags=re.IGNORECASE),
    re.compile(r"(Bundle)(Not)(Supported)", flags=re.IGNORECASE),
    re.compile(r"(Cache)(Control|Full|Session)", flags=re.IGNORECASE),
    re.compile(r"(Cached)(Session|Size)", flags=re.IGNORECASE),
    re.compile(r"(Class)(Change)", flags=re.IGNORECASE),
    re.compile(r"(Clear)(Value|View)", flags=re.IGNORECASE),
    re.compile(r"(Command)(Allocator|List|Pools|Pool|Queue|Recorder)", flags=re.IGNORECASE),
    re.compile(r"(Copy|Update)(Buffer|Texture|Tile)", flags=re.IGNORECASE),
    re.compile(r"(Data)(Pointer)", flags=re.IGNORECASE),
    re.compile(r"(Decode)(Stream)", flags=re.IGNORECASE),
    re.compile(r"(Decoder)(Heap)", flags=re.IGNORECASE),
    re.compile(r"(Depth)(Bounds)", flags=re.IGNORECASE),
    re.compile(r"(Descriptor)(Heap)", flags=re.IGNORECASE),
    re.compile(r"(Dest)(Blend)", flags=re.IGNORECASE),
    re.compile(r"(Developer)(Mode)", flags=re.IGNORECASE),
    re.compile(r"(Display)(Name)", flags=re.IGNORECASE),
    re.compile(r"(Dst)(Coordinates|Dimensions|Format|Offset|Placement|Range|Region|Type)", flags=re.IGNORECASE),
    re.compile(r"(Duplicate)(?!d)(\w+)", flags=re.IGNORECASE),
    re.compile(r"(Empty|Source)(Rect)(?!angle)", flags=re.IGNORECASE),
    re.compile(r"(Encoder)(Heap)", flags=re.IGNORECASE),
    re.compile(r"(Extension)(Command)", flags=re.IGNORECASE),
    re.compile(r"(Feature)(Support)", flags=re.IGNORECASE),
    re.compile(r"(Fill|Cull)(Mode)", flags=re.IGNORECASE),
    re.compile(r"(Find)(Value)", flags=re.IGNORECASE),
    re.compile(r"(Float)(Ops)", flags=re.IGNORECASE),
    re.compile(r"(Footprint)(Format)", flags=re.IGNORECASE),
    re.compile(r"(Format)(Mismatch)", flags=re.IGNORECASE),
    re.compile(r"(Free)(Data)", flags=re.IGNORECASE),
    re.compile(r"(From)(Clear|First)", flags=re.IGNORECASE),
    re.compile(r"(Gap)(Definition)", flags=re.IGNORECASE),
    re.compile(r"(Geometry)(Shader)", flags=re.IGNORECASE),
    re.compile(r"(Get)(Private)(Data)", flags=re.IGNORECASE),
    re.compile(r"(Hash)(Collisions|Collision)", flags=re.IGNORECASE),
    re.compile(r"(Heap)(Misc)(Flags)", flags=re.IGNORECASE),
    re.compile(r"(Heap)(Property|Properties)", flags=re.IGNORECASE),
    re.compile(r"(Input)(Layout|Slot)", flags=re.IGNORECASE),
    re.compile(r"^(Is)(Read)(Only)", flags=re.IGNORECASE),
    re.compile(r"(Library)(Blob)", flags=re.IGNORECASE),
    re.compile(r"(Load)(Pipeline)", flags=re.IGNORECASE),
    re.compile(r"(Logic)(Ops)", flags=re.IGNORECASE),
    re.compile(r"(MIP)(Levels)", flags=re.IGNORECASE),
    re.compile(r"(Make)(Resident)", flags=re.IGNORECASE),
    re.compile(r"(Mask)(Mismatched|Mismatch)", flags=re.IGNORECASE),
    re.compile(r"(Memory)(Pool)", flags=re.IGNORECASE),
    re.compile(r"(More)(Data)", flags=re.IGNORECASE),
    re.compile(r"(Motion)(Estimator)", flags=re.IGNORECASE),
    re.compile(r"(Multi)(Sampler|Sample)", flags=re.IGNORECASE),
    re.compile(r"(Name)(Not)(Found)", flags=re.IGNORECASE),
    re.compile(r"(No)(Name)", flags=re.IGNORECASE),
    re.compile(r"(Not)(Supported)", flags=re.IGNORECASE),
    re.compile(r"(Num)(Entries|Strides)", flags=re.IGNORECASE),
    re.compile(r"(Object)(Array|Owned)", flags=re.IGNORECASE),
    re.compile(r"(Object)(Not)(Owned)", flags=re.IGNORECASE),
    re.compile(r"(On)(Buffer)", flags=re.IGNORECASE),
    re.compile(r"(One)(Element)", flags=re.IGNORECASE),
    re.compile(r"(Out)(Of)(Bounds|Memory|Order)", flags=re.IGNORECASE),
    re.compile(r"(Owned)(Objects|Object)", flags=re.IGNORECASE),
    re.compile(r"(Page)(Property|Properties)", flags=re.IGNORECASE),
    re.compile(r"(Payload)(Size)", flags=re.IGNORECASE),
    re.compile(r"(Per)(Slot)", flags=re.IGNORECASE),
    re.compile(r"(Pipeline)(Library|States|State)", flags=re.IGNORECASE),
    re.compile(r"(Post|Pre)(Build)", flags=re.IGNORECASE),
    re.compile(r"(Process)(Stream)", flags=re.IGNORECASE),
    re.compile(r"(R)(Descs)", flags=re.IGNORECASE),
    re.compile(r"(RS)(Set)(Shading)(Rate)?", flags=re.IGNORECASE),
    re.compile(r"(Raster)(Mode)", flags=re.IGNORECASE),
    re.compile(r"(Read)(Back|From)", flags=re.IGNORECASE),
    re.compile(r"(Record)(Time)", flags=re.IGNORECASE),
    re.compile(r"(Register|Instance)(Masks|Mask)", flags=re.IGNORECASE),
    re.compile(r"(Render)(Target)", flags=re.IGNORECASE),
    re.compile(r"(Row)(Pitch)", flags=re.IGNORECASE),
    re.compile(r"(Sample)(Count|Desc|Positions)", flags=re.IGNORECASE),
    re.compile(r"(Set)(Event)(On)(Multiple)", flags=re.IGNORECASE),
    re.compile(r"(Set)(Private)(Data)", flags=re.IGNORECASE),
    re.compile(r"(Set)(Residency|View)", flags=re.IGNORECASE),
    re.compile(r"(Set)(Sample)(Positions)", flags=re.IGNORECASE),
    re.compile(r"(Slot)(Class)", flags=re.IGNORECASE),
    re.compile(r"(Src)(Blend|Box|Boxes|Dimensions|Format|Offset|Placement|Range|Region|Type)", flags=re.IGNORECASE),
    re.compile(r"(Start)(Component)", flags=re.IGNORECASE),
    re.compile(r"(Step)(Rate)", flags=re.IGNORECASE),
    re.compile(r"(Store)(Pipeline)", flags=re.IGNORECASE),
    re.compile(r"(Store)(Values|Value)", flags=re.IGNORECASE),
    re.compile(r"(Stream)(Stride)", flags=re.IGNORECASE),
    re.compile(r"(Stream)(To)(Rasterizer)", flags=re.IGNORECASE),
    re.compile(r"(Sub)(Object|Property|Resources|Resource)", flags=re.IGNORECASE),
    re.compile(r"(Swap)(Chain)", flags=re.IGNORECASE),
    re.compile(r"(System)(Read|Values|Value)", flags=re.IGNORECASE),
    re.compile(r"(Unsupported)(Format)", flags=re.IGNORECASE),
    re.compile(r"(Vector)(Heap)", flags=re.IGNORECASE),
    re.compile(r"(View)(?!Port)(\w+)", flags=re.IGNORECASE),
    re.compile(r"(Virtual)(Addresses|Address)", flags=re.IGNORECASE),
    re.compile(r"(With)(Stream)", flags=re.IGNORECASE),
    re.compile(r"(Write)(Buffer)", flags=re.IGNORECASE),
    re.compile(r"(Write)(Mask|To)", flags=re.IGNORECASE),
    re.compile(r"(Z)?(Fail|Pass)(Op)", flags=re.IGNORECASE),
    re.compile(r"(\w+)(Suported|Unsuported)|(Suported|Unsuported)(\w+)", flags=re.IGNORECASE),
    re.compile(r"^(Not)(Found)", flags=re.IGNORECASE),
    # Single word terms. Try to use plurals, whenever possible, to avoid splitting the trailing 's'.
    *map(to_single_term_regex, [
        "alpha",
        "already",
        "always",
        "cached",
        "cant",
        "completion",
        "component",
        "copyable",
        "create",
        "custom",
        "definitions",
        "denorm(?!alization)",
        "depth",
        "descriptors",
        "displaced",
        "doubles",
        "elements",
        "empty",
        "enough",
        "exceeds",
        "existing",
        "extensions",
        "flags",
        "float",
        "font",
        "footprints",
        "forced",
        "ignored",
        "immediately",
        "incompatible",
        "index",
        "invalid",
        "invalid",
        "keyed",
        "lifetime",
        "linkage",
        "mapped",
        "mappings",
        "memory,"
        "misc(?!ellaneous)",
        "miscellaneous",
        "mismatched",
        "mismatching",
        "missing",
        "monitored",
        "null",
        "only",
        "output",
        "params",
        "plane",
        "precision",
        "query(?!ing)",
        "rasterizer",
        "rendering",
        "resource",
        "samples",
        "scaled",
        "semantic",
        "shader",
        "shared",
        "signature",
        "slice",
        "sources",
        "stencil",
        "target",
        "tiles",
        "too",
        "topology",
        "tracked",
        "unexpected",
        "unordered",
        "unparseable",
        "unrecognized",
        "vertex",
        "video",
        "written",
        "wrong",
    ]),
]
