import WinSDK

typealias DxMetaCommandParameterType = D3D12_META_COMMAND_PARAMETER_TYPE

public extension DxMetaCommandParameterType {
    static var Float = D3D12_META_COMMAND_PARAMETER_TYPE_FLOAT
    
    static var Uint64 = D3D12_META_COMMAND_PARAMETER_TYPE_UINT64
    
    static var GpuVirtualAddress = D3D12_META_COMMAND_PARAMETER_TYPE_GPU_VIRTUAL_ADDRESS
    
    static var CpuDescriptorHandleHeapTypeCbvSrvUav = D3D12_META_COMMAND_PARAMETER_TYPE_CPU_DESCRIPTOR_HANDLE_HEAP_TYPE_CBV_SRV_UAV
    
    static var GpuDescriptorHandleHeapTypeCbvSrvUav = D3D12_META_COMMAND_PARAMETER_TYPE_GPU_DESCRIPTOR_HANDLE_HEAP_TYPE_CBV_SRV_UAV
}
