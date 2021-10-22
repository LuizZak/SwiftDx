import WinSDK

typealias DxCrossNodeSharingTier = D3D12_CROSS_NODE_SHARING_TIER

public extension DxCrossNodeSharingTier {
    static var NotSupported = D3D12_CROSS_NODE_SHARING_TIER_NOT_SUPPORTED
    
    static var Tier1Emulated = D3D12_CROSS_NODE_SHARING_TIER_1_EMULATED
    
    static var Tier1 = D3D12_CROSS_NODE_SHARING_TIER_1
    
    static var Tier2 = D3D12_CROSS_NODE_SHARING_TIER_2
    
    static var Tier3 = D3D12_CROSS_NODE_SHARING_TIER_3
}
