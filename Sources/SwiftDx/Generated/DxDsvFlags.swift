import WinSDK

typealias DxDsvFlags = D3D12_DSV_FLAGS

public extension DxDsvFlags {
    static var FlagNone = D3D12_DSV_FLAG_NONE
    
    static var FlagReadOnlyDepth = D3D12_DSV_FLAG_READ_ONLY_DEPTH
    
    static var FlagReadOnlyStencil = D3D12_DSV_FLAG_READ_ONLY_STENCIL
}
