import WinSDK

typealias DxVariableShadingRateTier = D3D12_VARIABLE_SHADING_RATE_TIER

public extension DxVariableShadingRateTier {
    static var NotSupported = D3D12_VARIABLE_SHADING_RATE_TIER_NOT_SUPPORTED
    
    static var Tier1 = D3D12_VARIABLE_SHADING_RATE_TIER_1
    
    static var Tier2 = D3D12_VARIABLE_SHADING_RATE_TIER_2
}
