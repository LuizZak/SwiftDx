import WinSDK

typealias DxDredFlags = D3D12_DRED_FLAGS

public extension DxDredFlags {
    static var FlagNone = D3D12_DRED_FLAG_NONE
    
    static var FlagForceEnable = D3D12_DRED_FLAG_FORCE_ENABLE
    
    static var FlagDisableAutobreadcrumbs = D3D12_DRED_FLAG_DISABLE_AUTOBREADCRUMBS
}
