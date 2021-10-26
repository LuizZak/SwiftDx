import re
from pathlib import Path
from typing import List, Iterable

from utils.data.swift_decls import SwiftDecl
from utils.data.swift_file import SwiftFile

PATH_MATCHERS: dict[re.Pattern, list[str]] = {
    # A
    re.compile(r'^DxAdapter.+'): ["Adapter"],
    re.compile(r'^DxAutoBreadcrumb.+'): ["AutoBreadcrumb"],

    # B
    re.compile(r'^DxBlend.+'): ["Blend"],
    re.compile(r'^DxBuffer.+'): ["Buffer"],
    re.compile(r'^DxBuildRaytracing.+'): ["Raytracing"],

    # C
    re.compile(r'^DxCommand.+'): ["Command"],
    re.compile(r'^DxCommandList.+'): ["Command", "List"],
    re.compile(r'^DxCommandQueue.+'): ["Command", "Queue"],
    re.compile(r'^DxCompute.+'): ["Compute"],

    # D
    re.compile(r'^DxDebug.+'): ["Debug"],
    re.compile(r'^DxDepthStencil.+'): ["DepthStencil"],
    re.compile(r'^DxDred.+'): ["Dred"],
    re.compile(r'^DxDescriptor.+'): ["Descriptor"],

    # F
    re.compile(r'^DxFeatureData.+'): ["FeatureData"],
    re.compile(r'^DxFence.+'): ["Fence"],

    # G
    re.compile(r'^DxGpu.+'): ["GPU"],

    # H
    re.compile(r'^DxHdr.+'): ["HDR"],
    re.compile(r'^DxHeap.+'): ["Heap"],

    # I
    re.compile(r'^DxInput.+'): ["Input"],

    # M
    re.compile(r'^DxMessage.+'): ["Message"],
    re.compile(r'^DxMetaCommand.+'): ["MetaCommand"],
    re.compile(r'^DxMode.+'): ["Mode"],

    # O
    re.compile(r'^DxOutput.+'): ["Output"],

    # P
    re.compile(r'^DxPipeline.+'): ["Pipeline"],
    re.compile(r'^DxPrimitive.+'): ["Primitive"],

    # R
    re.compile(r'^DxRaytracing.+'): ["Raytracing"],
    re.compile(r'^DxRaytracingAcceleration.+'): ["Raytracing", "Acceleration"],
    re.compile(r'^DxRaytracingGeometry.+'): ["Raytracing", "Geometry"],
    re.compile(r'^DxResource.+'): ["Resource"],
    re.compile(r'^DxRenderPass.+'): ["RenderPass"],
    re.compile(r'^DxRoot.+'): ["Root"],
    re.compile(r'^DxRootDescriptor.+'): ["Root", "Descriptor"],
    re.compile(r'^DxRootSignature.+'): ["Root", "Signature"],

    # S
    re.compile(r'^DxShader.+'): ["Shader"],
    re.compile(r'^DxShaderCache.+'): ["Shader", "Cache"],
    re.compile(r'^DxSwapChain.+'): ["SwapChain"],

    # T
    re.compile(r'^DxTile.+'): ["Tile"],
    re.compile(r'^DxTessellator.+'): ["Tessellator"],
    re.compile(r'^DxTex.+'): ["Texture"],
    re.compile(r'^DxTex1d.+'): ["Texture", "1D"],
    re.compile(r'^DxTex2d.+'): ["Texture", "2D"],
    re.compile(r'^DxTex3d.+'): ["Texture", "3D"],

    # Q
    re.compile(r'^DxQuery.+'): ["Query"],
}


class DirectoryStructureManager:
    """
    A class that is used to manage nested directory structures for generated types.
    """

    def __init__(self, base_path: Path):
        self.base_path = base_path

    def make_declaration_files(self, decls: Iterable[SwiftDecl]) -> list[SwiftFile]:
        result: dict[Path, SwiftFile] = dict()

        for decl in decls:
            path = self.path_for_decl(decl)
            file = result.get(path, SwiftFile(path, []))
            file.add_decl(decl)

            result[path] = file

        return list(result.values())

    def path_for_decl(self, decl: SwiftDecl) -> Path:
        file_path = self.file_for_decl(decl)

        return file_path

    def folder_for_file(self, file_name: str) -> Path:
        dir_path = self.base_path
        longest_path: List[str] = []

        for (p, path) in PATH_MATCHERS.items():
            if p.match(file_name):
                if len(path) > len(longest_path):
                    longest_path = path

        return dir_path.joinpath(*longest_path)

    def file_for_decl(self, decl: SwiftDecl) -> Path:
        decl_name = decl.name.to_string()
        # Remove a trailing digit, but only if it's the only digit on the suffix.
        # Some declarations use single digits to define separate interface versions, while others such as
        # D3D12_RANGE_UINT64 use two trailing digits as part of its declaration.
        if len(decl_name) > 2 and decl_name[-1].isdigit() and not decl_name[-2].isdigit():
            decl_name = decl_name[:-1]

        file_name = f"{decl_name}.swift"

        return self.folder_for_file(file_name).joinpath(file_name)
