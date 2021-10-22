import WinSDK

typealias DxResidencyFlags = D3D12_RESIDENCY_FLAGS

public extension DxResidencyFlags {
    static var FlagNone = D3D12_RESIDENCY_FLAG_NONE
    
    static var FlagDenyOverbudget = D3D12_RESIDENCY_FLAG_DENY_OVERBUDGET
}
