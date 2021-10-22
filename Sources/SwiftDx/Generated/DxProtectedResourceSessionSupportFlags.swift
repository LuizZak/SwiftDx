import WinSDK

typealias DxProtectedResourceSessionSupportFlags = D3D12_PROTECTED_RESOURCE_SESSION_SUPPORT_FLAGS

public extension DxProtectedResourceSessionSupportFlags {
    static var FlagNone = D3D12_PROTECTED_RESOURCE_SESSION_SUPPORT_FLAG_NONE
    
    static var FlagSupported = D3D12_PROTECTED_RESOURCE_SESSION_SUPPORT_FLAG_SUPPORTED
}
