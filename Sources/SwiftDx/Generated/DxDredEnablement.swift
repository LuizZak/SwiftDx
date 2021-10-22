import WinSDK

typealias DxDredEnablement = D3D12_DRED_ENABLEMENT

public extension DxDredEnablement {
    static var SystemControlled = D3D12_DRED_ENABLEMENT_SYSTEM_CONTROLLED
    
    static var ForcedOff = D3D12_DRED_ENABLEMENT_FORCED_OFF
    
    static var ForcedOn = D3D12_DRED_ENABLEMENT_FORCED_ON
}
