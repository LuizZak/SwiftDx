import WinSDK

typealias DxLogicOp = D3D12_LOGIC_OP

public extension DxLogicOp {
    static var Clear = D3D12_LOGIC_OP_CLEAR
    
    static var Set = D3D12_LOGIC_OP_SET
    
    static var Copy = D3D12_LOGIC_OP_COPY
    
    static var CopyInverted = D3D12_LOGIC_OP_COPY_INVERTED
    
    static var Noop = D3D12_LOGIC_OP_NOOP
    
    static var Invert = D3D12_LOGIC_OP_INVERT
    
    static var And = D3D12_LOGIC_OP_AND
    
    static var Nand = D3D12_LOGIC_OP_NAND
    
    static var Or = D3D12_LOGIC_OP_OR
    
    static var Nor = D3D12_LOGIC_OP_NOR
    
    static var Xor = D3D12_LOGIC_OP_XOR
    
    static var Equiv = D3D12_LOGIC_OP_EQUIV
    
    static var AndReverse = D3D12_LOGIC_OP_AND_REVERSE
    
    static var AndInverted = D3D12_LOGIC_OP_AND_INVERTED
    
    static var OrReverse = D3D12_LOGIC_OP_OR_REVERSE
    
    static var OrInverted = D3D12_LOGIC_OP_OR_INVERTED
}
