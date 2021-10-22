import WinSDK

typealias DxComparisonFunc = D3D12_COMPARISON_FUNC

public extension DxComparisonFunc {
    static var Never = D3D12_COMPARISON_FUNC_NEVER
    
    static var Less = D3D12_COMPARISON_FUNC_LESS
    
    static var Equal = D3D12_COMPARISON_FUNC_EQUAL
    
    static var LessEqual = D3D12_COMPARISON_FUNC_LESS_EQUAL
    
    static var Greater = D3D12_COMPARISON_FUNC_GREATER
    
    static var NotEqual = D3D12_COMPARISON_FUNC_NOT_EQUAL
    
    static var GreaterEqual = D3D12_COMPARISON_FUNC_GREATER_EQUAL
    
    static var Always = D3D12_COMPARISON_FUNC_ALWAYS
}
