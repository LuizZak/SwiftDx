import WinSDK

typealias DxTileMappingFlags = D3D12_TILE_MAPPING_FLAGS

public extension DxTileMappingFlags {
    static var FlagNone = D3D12_TILE_MAPPING_FLAG_NONE
    
    static var FlagNoHazard = D3D12_TILE_MAPPING_FLAG_NO_HAZARD
}
