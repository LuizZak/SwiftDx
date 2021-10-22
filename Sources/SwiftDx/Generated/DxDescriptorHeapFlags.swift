import WinSDK

typealias DxDescriptorHeapFlags = D3D12_DESCRIPTOR_HEAP_FLAGS

public extension DxDescriptorHeapFlags {
    static var FlagNone = D3D12_DESCRIPTOR_HEAP_FLAG_NONE
    
    static var FlagShaderVisible = D3D12_DESCRIPTOR_HEAP_FLAG_SHADER_VISIBLE
}
