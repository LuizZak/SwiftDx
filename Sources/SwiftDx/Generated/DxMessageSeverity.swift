import WinSDK

typealias DxMessageSeverity = D3D12_MESSAGE_SEVERITY

public extension DxMessageSeverity {
    static var Corruption = D3D12_MESSAGE_SEVERITY_CORRUPTION
    
    static var Error = D3D12_MESSAGE_SEVERITY_ERROR
    
    static var Warning = D3D12_MESSAGE_SEVERITY_WARNING
    
    static var Info = D3D12_MESSAGE_SEVERITY_INFO
    
    static var Message = D3D12_MESSAGE_SEVERITY_MESSAGE
}
