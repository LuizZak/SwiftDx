import WinSDK

typealias DxTileRangeFlags = D3D12_TILE_RANGE_FLAGS

public extension DxTileRangeFlags {
    static var FlagNone = D3D12_TILE_RANGE_FLAG_NONE
    
    static var FlagNull = D3D12_TILE_RANGE_FLAG_NULL
    
    static var FlagSkip = D3D12_TILE_RANGE_FLAG_SKIP
    
    static var FlagReuseSingleTile = D3D12_TILE_RANGE_FLAG_REUSE_SINGLE_TILE
}
