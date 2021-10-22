import WinSDK

typealias DxTileCopyFlags = D3D12_TILE_COPY_FLAGS

public extension DxTileCopyFlags {
    static var FlagNone = D3D12_TILE_COPY_FLAG_NONE
    
    static var FlagNoHazard = D3D12_TILE_COPY_FLAG_NO_HAZARD
    
    static var FlagLinearBufferToSwizzledTiledResource = D3D12_TILE_COPY_FLAG_LINEAR_BUFFER_TO_SWIZZLED_TILED_RESOURCE
    
    static var FlagSwizzledTiledResourceToLinearBuffer = D3D12_TILE_COPY_FLAG_SWIZZLED_TILED_RESOURCE_TO_LINEAR_BUFFER
}
