import WinSDK

typealias DxBlendOp = D3D12_BLEND_OP

public extension DxBlendOp {
    static var Add = D3D12_BLEND_OP_ADD
    
    static var Subtract = D3D12_BLEND_OP_SUBTRACT
    
    static var RevSubtract = D3D12_BLEND_OP_REV_SUBTRACT
    
    static var Min = D3D12_BLEND_OP_MIN
    
    static var Max = D3D12_BLEND_OP_MAX
}
