import WinSDK

typealias DxSharedResourceCompatibilityTier = D3D12_SHARED_RESOURCE_COMPATIBILITY_TIER

public extension DxSharedResourceCompatibilityTier {
    static var Tier0 = D3D12_SHARED_RESOURCE_COMPATIBILITY_TIER_0
    
    static var Tier1 = D3D12_SHARED_RESOURCE_COMPATIBILITY_TIER_1
    
    static var Tier2 = D3D12_SHARED_RESOURCE_COMPATIBILITY_TIER_2
}
