import WinSDK

typealias DxProtectedSessionStatus = D3D12_PROTECTED_SESSION_STATUS

public extension DxProtectedSessionStatus {
    static var Ok = D3D12_PROTECTED_SESSION_STATUS_OK
    
    static var Invalid = D3D12_PROTECTED_SESSION_STATUS_INVALID
}
