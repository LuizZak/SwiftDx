import WinSDK

typealias DxResidencyPriority = D3D12_RESIDENCY_PRIORITY

public extension DxResidencyPriority {
    static var Minimum = D3D12_RESIDENCY_PRIORITY_MINIMUM
    
    static var Low = D3D12_RESIDENCY_PRIORITY_LOW
    
    static var Normal = D3D12_RESIDENCY_PRIORITY_NORMAL
    
    static var High = D3D12_RESIDENCY_PRIORITY_HIGH
    
    static var Maximum = D3D12_RESIDENCY_PRIORITY_MAXIMUM
}
