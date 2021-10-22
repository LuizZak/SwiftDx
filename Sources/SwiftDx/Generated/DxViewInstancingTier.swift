import WinSDK

typealias DxViewInstancingTier = D3D12_VIEW_INSTANCING_TIER

public extension DxViewInstancingTier {
    static var NotSupported = D3D12_VIEW_INSTANCING_TIER_NOT_SUPPORTED
    
    static var Tier1 = D3D12_VIEW_INSTANCING_TIER_1
    
    static var Tier2 = D3D12_VIEW_INSTANCING_TIER_2
    
    static var Tier3 = D3D12_VIEW_INSTANCING_TIER_3
}
