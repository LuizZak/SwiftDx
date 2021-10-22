import WinSDK

typealias DxHeapType = D3D12_HEAP_TYPE

public extension DxHeapType {
    static var Default = D3D12_HEAP_TYPE_DEFAULT
    
    static var Upload = D3D12_HEAP_TYPE_UPLOAD
    
    static var Readback = D3D12_HEAP_TYPE_READBACK
    
    static var Custom = D3D12_HEAP_TYPE_CUSTOM
}
