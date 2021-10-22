import WinSDK

typealias DxDredDeviceState = D3D12_DRED_DEVICE_STATE

public extension DxDredDeviceState {
    static var Unknown = D3D12_DRED_DEVICE_STATE_UNKNOWN
    
    static var Hung = D3D12_DRED_DEVICE_STATE_HUNG
    
    static var Fault = D3D12_DRED_DEVICE_STATE_FAULT
    
    static var Pagefault = D3D12_DRED_DEVICE_STATE_PAGEFAULT
}
