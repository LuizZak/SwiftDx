import re
import sys

from directory_structure.directory_structure_manager import (
    DirectoryStructureManager,
)
from generate_types_main import generate_types_main


def main() -> int:
    header_file = "SwiftDx.h"

    d2d_prefixes = [
        "DXGI",
        "D3D12",
        "D3D",
    ]
    """
    List of prefixes from DirectX declarations to convert

    Will also be used as a list of terms to remove the prefix of in final declaration names.
    """
    imports = [
        "WinSDK",
    ]

    dir_manager = DirectoryStructureManager(DX12_PATH_MATCHERS)

    generate_types_main(
        header_file=header_file,
        prefixes=d2d_prefixes,
        imports=imports,
        directory_manager=dir_manager,
        cli_description="Generates .swift files wrapping DirectX declarations found in public Windows SDK headers.",
    )

    return 0


DX12_PATH_MATCHERS: dict[re.Pattern, list[str]] = {
    # A
    re.compile(r"^DxAdapter.+"): ["Adapter"],
    re.compile(r"^DxAutoBreadcrumb.+"): ["AutoBreadcrumb"],
    # B
    re.compile(r"^DxBlend.+"): ["Blend"],
    re.compile(r"^DxBuffer.+"): ["Buffer"],
    re.compile(r"^DxBuildRaytracing.+"): ["Raytracing"],
    # C
    re.compile(r"^DxCommand.+"): ["Command"],
    re.compile(r"^DxCommandList.+"): ["Command", "List"],
    re.compile(r"^DxCommandQueue.+"): ["Command", "Queue"],
    re.compile(r"^DxCompute.+"): ["Compute"],
    # D
    re.compile(r"^DxDebug.+"): ["Debug"],
    re.compile(r"^DxDepthStencil.+"): ["DepthStencil"],
    re.compile(r"^DxDred.+"): ["Dred"],
    re.compile(r"^DxDescriptor.+"): ["Descriptor"],
    # E
    # F
    re.compile(r"^DxFeatureData.+"): ["FeatureData"],
    re.compile(r"^DxFence.+"): ["Fence"],
    # G
    re.compile(r"^DxGPU.+"): ["GPU"],
    re.compile(r"^DxgiGPU.+"): ["GPU"],
    # H
    re.compile(r"^DxHdr.+"): ["HDR"],
    re.compile(r"^DxHeap.+"): ["Heap"],
    # I
    re.compile(r"^DxInput.+"): ["Input"],
    # J
    # K
    # M
    re.compile(r"^DxMessage.+"): ["Message"],
    re.compile(r"^DxMetaCommand.+"): ["MetaCommand"],
    re.compile(r"^DxMode.+"): ["Mode"],
    # N
    # O
    re.compile(r"^DxOutput.+"): ["Output"],
    # P
    re.compile(r"^DxPipeline.+"): ["Pipeline"],
    re.compile(r"^DxPrimitive.+"): ["Primitive"],
    # Q
    re.compile(r"^DxQuery.+"): ["Query"],
    # R
    re.compile(r"^DxRaytracing.+"): ["Raytracing"],
    re.compile(r"^DxRaytracingAcceleration.+"): ["Raytracing", "Acceleration"],
    re.compile(r"^DxRaytracingGeometry.+"): ["Raytracing", "Geometry"],
    re.compile(r"^DxResource.+"): ["Resource"],
    re.compile(r"^DxRenderPass.+"): ["RenderPass"],
    re.compile(r"^DxRoot.+"): ["Root"],
    re.compile(r"^DxRootDescriptor.+"): ["Root", "Descriptor"],
    re.compile(r"^DxRootSignature.+"): ["Root", "Signature"],
    # S
    re.compile(r"^DxShader.+"): ["Shader"],
    re.compile(r"^DxShaderCache.+"): ["Shader", "Cache"],
    re.compile(r"^DxSwapChain.+"): ["SwapChain"],
    # T
    re.compile(r"^DxTile.+"): ["Tile"],
    re.compile(r"^DxTessellator.+"): ["Tessellator"],
    re.compile(r"^DxTex.+"): ["Texture"],
    re.compile(r"^DxTex1d.+"): ["Texture", "1D"],
    re.compile(r"^DxTex2d.+"): ["Texture", "2D"],
    re.compile(r"^DxTex3d.+"): ["Texture", "3D"],
    # U
    # V
    # X
    # W
    # Z
}


if __name__ == "__main__":
    try:
        sys.exit(main())
    except KeyboardInterrupt:
        sys.exit(1)
