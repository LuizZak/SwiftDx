import WinSDK

typealias DxResourceBarrierFlags = D3D12_RESOURCE_BARRIER_FLAGS

public extension DxResourceBarrierFlags {
    static var FlagNone = D3D12_RESOURCE_BARRIER_FLAG_NONE
    
    static var FlagBeginOnly = D3D12_RESOURCE_BARRIER_FLAG_BEGIN_ONLY
    
    static var FlagEndOnly = D3D12_RESOURCE_BARRIER_FLAG_END_ONLY
}
