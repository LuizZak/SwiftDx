import WinSDK

typealias DxCpuPageProperty = D3D12_CPU_PAGE_PROPERTY

public extension DxCpuPageProperty {
    static var Unknown = D3D12_CPU_PAGE_PROPERTY_UNKNOWN
    
    static var NotAvailable = D3D12_CPU_PAGE_PROPERTY_NOT_AVAILABLE
    
    static var WriteCombine = D3D12_CPU_PAGE_PROPERTY_WRITE_COMBINE
    
    static var WriteBack = D3D12_CPU_PAGE_PROPERTY_WRITE_BACK
}
