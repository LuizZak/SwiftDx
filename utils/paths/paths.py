from dataclasses import dataclass
from os import PathLike
from pathlib import Path

SOURCE_ROOT_PATH = Path(__file__).parents[2]
SCRIPTS_ROOT_PATH = Path(__file__).parents[1]


@dataclass
class GeneratedPathOutput:
    path_for_generated: Path
    parent_path_for_generated: Path


def path(root: Path | str, *args: str | PathLike[str]) -> Path:
    return Path(root).joinpath(*args)


def srcroot_path(*args: str | PathLike[str]) -> Path:
    return path(SOURCE_ROOT_PATH, *args)


def scripts_path(*args: str | PathLike[str]) -> Path:
    return path(SCRIPTS_ROOT_PATH, *args)


def compute_path_for_generated(header_file: str | PathLike[str]) -> GeneratedPathOutput:
    swift_target_path = srcroot_path("Sources", Path(header_file).with_suffix(""))

    return GeneratedPathOutput(
        swift_target_path.joinpath("Generated"), swift_target_path
    )


def process_path_for_generated(
    desired_generated_path: str | PathLike[str],
) -> GeneratedPathOutput:
    """
    Takes in a {path}/Generated path string and returns a `GeneratedPathOutput`
    for the path.
    """
    desired_generated_path = Path(desired_generated_path)

    return GeneratedPathOutput(desired_generated_path, desired_generated_path.parent)
