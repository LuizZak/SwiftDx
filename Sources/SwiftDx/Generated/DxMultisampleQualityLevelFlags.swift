import WinSDK

typealias DxMultisampleQualityLevelFlags = D3D12_MULTISAMPLE_QUALITY_LEVEL_FLAGS

public extension DxMultisampleQualityLevelFlags {
    static var LevelsFlagNone = D3D12_MULTISAMPLE_QUALITY_LEVELS_FLAG_NONE
    
    static var LevelsFlagTiledResource = D3D12_MULTISAMPLE_QUALITY_LEVELS_FLAG_TILED_RESOURCE
}
