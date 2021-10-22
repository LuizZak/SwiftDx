import WinSDK

typealias DxRldoFlags = D3D12_RLDO_FLAGS

public extension DxRldoFlags {
    static var None = D3D12_RLDO_NONE
    
    static var Summary = D3D12_RLDO_SUMMARY
    
    static var Detail = D3D12_RLDO_DETAIL
    
    static var IgnoreInternal = D3D12_RLDO_IGNORE_INTERNAL
}
