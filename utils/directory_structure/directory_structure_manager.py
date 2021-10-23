import re

from pathlib import Path
from typing import Dict, List

from data.swift_decls import SwiftDecl

PATH_MATCHERS: Dict[re.Pattern, list[str]] = {
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
"A map of filename regex matchers that map a file into a specific subdirectory structure."

class DirectoryStructureManager:
    """
    A class that is used to manage nested directory structures for generated types.
    """

    def __init__(self, base_path: Path):
        self.base_path = base_path
    
    def path_for_decl(self, decl: SwiftDecl) -> Path:
        file_name = f"{decl.name.to_string()}.swift"
        file_path = self.folder_for_decl(file_name, decl).joinpath(file_name)

        return file_path
    
    def folder_for_decl(self, file_name: str, decl: SwiftDecl) -> Path:
        dir_path = self.base_path
        longest_path: List[str] = []

        for (p, path) in PATH_MATCHERS.items():
            if p.match(file_name):
                if len(path) > len(longest_path):
                    longest_path = path

        return dir_path.joinpath(*longest_path)
