import WinSDK

typealias DxProgrammableSamplePositionsTier = D3D12_PROGRAMMABLE_SAMPLE_POSITIONS_TIER

public extension DxProgrammableSamplePositionsTier {
    static var NotSupported = D3D12_PROGRAMMABLE_SAMPLE_POSITIONS_TIER_NOT_SUPPORTED
    
    static var Tier1 = D3D12_PROGRAMMABLE_SAMPLE_POSITIONS_TIER_1
    
    static var Tier2 = D3D12_PROGRAMMABLE_SAMPLE_POSITIONS_TIER_2
}
