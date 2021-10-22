import WinSDK

typealias DxConservativeRasterizationTier = D3D12_CONSERVATIVE_RASTERIZATION_TIER

public extension DxConservativeRasterizationTier {
    static var NotSupported = D3D12_CONSERVATIVE_RASTERIZATION_TIER_NOT_SUPPORTED
    
    static var Tier1 = D3D12_CONSERVATIVE_RASTERIZATION_TIER_1
    
    static var Tier2 = D3D12_CONSERVATIVE_RASTERIZATION_TIER_2
    
    static var Tier3 = D3D12_CONSERVATIVE_RASTERIZATION_TIER_3
}
