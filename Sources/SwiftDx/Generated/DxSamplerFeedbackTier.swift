import WinSDK

typealias DxSamplerFeedbackTier = D3D12_SAMPLER_FEEDBACK_TIER

public extension DxSamplerFeedbackTier {
    static var NotSupported = D3D12_SAMPLER_FEEDBACK_TIER_NOT_SUPPORTED
    
    static var Tier09 = D3D12_SAMPLER_FEEDBACK_TIER_0_9
    
    static var Tier10 = D3D12_SAMPLER_FEEDBACK_TIER_1_0
}
