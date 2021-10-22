import WinSDK

typealias DxDescriptorHeapType = D3D12_DESCRIPTOR_HEAP_TYPE

public extension DxDescriptorHeapType {
    static var CbvSrvUav = D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV
    
    static var Sampler = D3D12_DESCRIPTOR_HEAP_TYPE_SAMPLER
    
    static var Rtv = D3D12_DESCRIPTOR_HEAP_TYPE_RTV
    
    static var Dsv = D3D12_DESCRIPTOR_HEAP_TYPE_DSV
    
    static var NumTypes = D3D12_DESCRIPTOR_HEAP_TYPE_NUM_TYPES
}
