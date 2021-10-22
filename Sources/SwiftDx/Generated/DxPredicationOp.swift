import WinSDK

typealias DxPredicationOp = D3D12_PREDICATION_OP

public extension DxPredicationOp {
    static var EqualZero = D3D12_PREDICATION_OP_EQUAL_ZERO
    
    static var NotEqualZero = D3D12_PREDICATION_OP_NOT_EQUAL_ZERO
}
