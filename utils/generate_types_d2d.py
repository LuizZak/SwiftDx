import argparse
import os
import sys

from pathlib import Path
from platform import system

from utils.generator.type_generator import DeclGeneratorTarget, DeclFileGeneratorStdoutTarget, \
                                           DeclFileGeneratorDiskTarget, TypeGeneratorRequest, \
                                           generate_types
from utils.paths import paths

FILE_NAME = "SwiftDirect2D.h"

D2D_PREFIXES = [
    "D2D1",
    "D2D",
]
"""
List of prefixes from Direct2D declarations to convert

Will also be used as a list of terms to remove the prefix of in final declaration names.
"""


def main() -> int:
    parser = argparse.ArgumentParser(
        description='Generates .swift files wrapping Direct2D declarations found in public Windows SDK headers.'
    )

    parser.add_argument(
        '--stdout',
        action='store_true',
        help='Outputs files to stdout instead of file disk.'
    )

    args = parser.parse_args()

    if system() != "Windows":
        print("This generator script requires a Windows operating system.")
        exit(1)

    if os.environ.get("UniversalCRTSdkDir") is None:
        print("Missing %UniversalCRTSdkDir% environment variable. Please run this script from a Visual Studio "
              "Developer Command Prompt (more info at "
              "https://docs.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2019)")
        exit(1)
    if os.environ.get("UCRTVersion") is None:
        print("Missing %UCRTVersion% environment variable. Please run this script from a Visual Studio Developer "
              "Command Prompt (more info at https://docs.microsoft.com/en-us/visualstudio/ide/reference/command"
              "-prompt-powershell?view=vs-2019)")
        exit(1)

    input_path = paths.scripts_path(FILE_NAME)
    if not input_path.exists() or not input_path.is_file():
        print("Error: Expected path to an existing header file within utils\\.")
        return 1

    swift_target_path = paths.srcroot_path("Sources", Path(FILE_NAME).with_suffix(""))
    if not swift_target_path.exists() or not swift_target_path.is_dir():
        print(f"Error: No Swift target directory with name '{FILE_NAME.rstrip('.h')}' "
              f"found in {paths.srcroot_path('Sources')}\\.")
        return 1

    destination_path = swift_target_path.joinpath("Generated")

    target: DeclGeneratorTarget

    if args.stdout:
        target = DeclFileGeneratorStdoutTarget()
    else:
        target = DeclFileGeneratorDiskTarget(destination_path, rm_folder=True)

    request = TypeGeneratorRequest(
        header_file=input_path,
        destination=destination_path,
        prefixes=D2D_PREFIXES,
        target=target
    )

    generate_types(request)


if __name__ == '__main__':
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
