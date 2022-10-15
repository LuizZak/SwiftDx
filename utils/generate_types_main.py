import argparse
import os

from platform import system

from directory_structure.directory_structure_manager import (
    DirectoryStructureManager,
)
from generator.type_generator import (
    DeclGeneratorTarget,
    DeclFileGeneratorStdoutTarget,
    DeclFileGeneratorDiskTarget,
    TypeGeneratorRequest,
    generate_types,
)

from paths import paths
from cli.cli_utils import cli_confirm


def generate_types_main(
    header_file: str,
    prefixes: str,
    imports: list[str],
    directory_manager: DirectoryStructureManager,
    cli_description: str,
):
    parser = argparse.ArgumentParser(description=cli_description)

    parser.add_argument(
        "--stdout",
        action="store_true",
        help="Outputs files to stdout instead of file disk.",
    )
    parser.add_argument(
        "-y",
        "--skip-confirm",
        action="store_true",
        help="Skips confirmation before modifying file disk.",
    )
    parser.add_argument(
        "-o",
        "--output",
        dest="target_path",
        type=str,
        default=None,
        help=f"""
        Target output path for generated files. If not provided, is computed automatically as (SourceRoot)/Sources/{header_file.strip('.h')}/Generated.
        Note: Any existing files in this directory will be removed during the process!
        """,
    )

    args = parser.parse_args()

    if system() != "Windows":
        print("This generator script requires a Windows operating system.")
        exit(1)

    if os.environ.get("UniversalCRTSdkDir") is None:
        print(
            "Missing %UniversalCRTSdkDir% environment variable. Please run this script from a Visual Studio "
            "Developer Command Prompt (more info at "
            "https://docs.microsoft.com/en-us/visualstudio/ide/reference/command-prompt-powershell?view=vs-2019)"
        )
        exit(1)
    if os.environ.get("UCRTVersion") is None:
        print(
            "Missing %UCRTVersion% environment variable. Please run this script from a Visual Studio Developer "
            "Command Prompt (more info at https://docs.microsoft.com/en-us/visualstudio/ide/reference/command"
            "-prompt-powershell?view=vs-2019)"
        )
        exit(1)

    input_path = paths.scripts_path(header_file)
    if not input_path.exists() or not input_path.is_file():
        print("Error: Expected path to an existing header file within utils\\.")
        return 1

    gen_path = (
        paths.compute_path_for_generated(header_file)
        if args.target_path is None
        else paths.process_path_for_generated(args.target_path)
    )

    if (
        not gen_path.parent_path_for_generated.exists()
        or not gen_path.parent_path_for_generated.is_dir()
    ):
        print(
            f"Error: No Swift target directory with name '{header_file.rstrip('.h')}' "
            f"found in {paths.srcroot_path('Sources')}\\."
        )
        return 1

    if not args.skip_confirm:
        confirm = cli_confirm(
            f"All files in {gen_path.path_for_generated} will be erased! Continue?"
        )

        if not confirm:
            return 0

    target: DeclGeneratorTarget

    if args.stdout:
        target = DeclFileGeneratorStdoutTarget()
    else:
        target = DeclFileGeneratorDiskTarget(
            gen_path.path_for_generated, rm_folder=True
        )

    request = TypeGeneratorRequest(
        header_file=input_path,
        destination=gen_path.path_for_generated,
        directory_manager=directory_manager,
        prefixes=prefixes,
        target=target,
        imports=imports,
    )

    generate_types(request)
