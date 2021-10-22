import WinSDK

typealias DxStencilOp = D3D12_STENCIL_OP

public extension DxStencilOp {
    static var Keep = D3D12_STENCIL_OP_KEEP
    
    static var Zero = D3D12_STENCIL_OP_ZERO
    
    static var Replace = D3D12_STENCIL_OP_REPLACE
    
    static var IncrSat = D3D12_STENCIL_OP_INCR_SAT
    
    static var DecrSat = D3D12_STENCIL_OP_DECR_SAT
    
    static var Invert = D3D12_STENCIL_OP_INVERT
    
    static var Incr = D3D12_STENCIL_OP_INCR
    
    static var Decr = D3D12_STENCIL_OP_DECR
}
