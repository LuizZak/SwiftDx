import re
import sys

from directory_structure.directory_structure_manager import (
    DirectoryStructureManager,
)
from generate_types_main import generate_types_main


def main() -> int:
    header_file = "SwiftDirect2D.h"

    d2d_prefixes = [
        "D2D1",
        "D2D",
    ]
    """
    List of prefixes from Direct2D declarations to convert

    Will also be used as a list of terms to remove the prefix of in final declaration names.
    """
    imports = [
        "WinSDK",
        "CDirect2D",
    ]

    dir_manager = DirectoryStructureManager(D2D_PATH_MATCHERS)

    generate_types_main(
        header_file=header_file,
        prefixes=d2d_prefixes,
        imports=imports,
        directory_manager=dir_manager,
        cli_description="Generates .swift files wrapping Direct2D declarations found in public Windows SDK headers.",
    )


D2D_PATH_MATCHERS: dict[re.Pattern, list[str]] = {
    # A
    # B
    # C
    re.compile(r"^D2Color.+"): ["Color"],
    # D
    # E
    re.compile(r"^D2Ellipse.+"): ["Geometry"],
    # F
    # G
    # H
    # I
    # J
    # K
    # L
    # M
    re.compile(r"^D2Matrix.+"): ["Math"],
    # N
    # O
    # P
    re.compile(r"^D2Point.+"): ["Geometry"],
    # Q
    # R
    re.compile(r"^D2Rect.+"): ["Geometry"],
    # S
    re.compile(r"^D2SVG.+"): ["SVG"],
    # T
    re.compile(r"^D2Triangle.+"): ["Geometry"],
    # U
    # V
    re.compile(r"^D2Vector.+"): ["Math"],
    # X
    # W
    # Z
}


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
