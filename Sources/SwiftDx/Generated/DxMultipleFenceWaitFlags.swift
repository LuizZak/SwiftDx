import WinSDK

typealias DxMultipleFenceWaitFlags = D3D12_MULTIPLE_FENCE_WAIT_FLAGS

public extension DxMultipleFenceWaitFlags {
    static var FlagNone = D3D12_MULTIPLE_FENCE_WAIT_FLAG_NONE
    
    static var FlagAny = D3D12_MULTIPLE_FENCE_WAIT_FLAG_ANY
    
    static var FlagAll = D3D12_MULTIPLE_FENCE_WAIT_FLAG_ALL
}
