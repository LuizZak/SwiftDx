import WinSDK

typealias DxRaytracingTier = D3D12_RAYTRACING_TIER

public extension DxRaytracingTier {
    static var NotSupported = D3D12_RAYTRACING_TIER_NOT_SUPPORTED
    
    static var Tier10 = D3D12_RAYTRACING_TIER_1_0
    
    static var Tier11 = D3D12_RAYTRACING_TIER_1_1
}
