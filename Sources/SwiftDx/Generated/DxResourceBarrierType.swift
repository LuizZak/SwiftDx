import WinSDK

typealias DxResourceBarrierType = D3D12_RESOURCE_BARRIER_TYPE

public extension DxResourceBarrierType {
    static var Transition = D3D12_RESOURCE_BARRIER_TYPE_TRANSITION
    
    static var Aliasing = D3D12_RESOURCE_BARRIER_TYPE_ALIASING
    
    static var Uav = D3D12_RESOURCE_BARRIER_TYPE_UAV
}
