import WinSDK

typealias DxClearFlags = D3D12_CLEAR_FLAGS

public extension DxClearFlags {
    static var FlagDepth = D3D12_CLEAR_FLAG_DEPTH
    
    static var FlagStencil = D3D12_CLEAR_FLAG_STENCIL
}
