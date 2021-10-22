import WinSDK

typealias DxFenceFlags = D3D12_FENCE_FLAGS

public extension DxFenceFlags {
    static var FlagNone = D3D12_FENCE_FLAG_NONE
    
    static var FlagShared = D3D12_FENCE_FLAG_SHARED
    
    static var FlagSharedCrossAdapter = D3D12_FENCE_FLAG_SHARED_CROSS_ADAPTER
    
    static var FlagNonMonitored = D3D12_FENCE_FLAG_NON_MONITORED
}
