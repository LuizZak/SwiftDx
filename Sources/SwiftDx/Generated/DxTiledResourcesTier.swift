import WinSDK

typealias DxTiledResourcesTier = D3D12_TILED_RESOURCES_TIER

public extension DxTiledResourcesTier {
    static var NotSupported = D3D12_TILED_RESOURCES_TIER_NOT_SUPPORTED
    
    static var Tier1 = D3D12_TILED_RESOURCES_TIER_1
    
    static var Tier2 = D3D12_TILED_RESOURCES_TIER_2
    
    static var Tier3 = D3D12_TILED_RESOURCES_TIER_3
    
    static var Tier4 = D3D12_TILED_RESOURCES_TIER_4
}
