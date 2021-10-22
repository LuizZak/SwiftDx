import WinSDK

typealias DxFilterReductionType = D3D12_FILTER_REDUCTION_TYPE

public extension DxFilterReductionType {
    static var Standard = D3D12_FILTER_REDUCTION_TYPE_STANDARD
    
    static var Comparison = D3D12_FILTER_REDUCTION_TYPE_COMPARISON
    
    static var Minimum = D3D12_FILTER_REDUCTION_TYPE_MINIMUM
    
    static var Maximum = D3D12_FILTER_REDUCTION_TYPE_MAXIMUM
}
