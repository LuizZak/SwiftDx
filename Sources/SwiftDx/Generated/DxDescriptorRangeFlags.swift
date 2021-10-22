import WinSDK

typealias DxDescriptorRangeFlags = D3D12_DESCRIPTOR_RANGE_FLAGS

public extension DxDescriptorRangeFlags {
    static var FlagNone = D3D12_DESCRIPTOR_RANGE_FLAG_NONE
    
    static var FlagDescriptorsVolatile = D3D12_DESCRIPTOR_RANGE_FLAG_DESCRIPTORS_VOLATILE
    
    static var FlagDataVolatile = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_VOLATILE
    
    static var FlagDataStaticWhileSetAtExecute = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_STATIC_WHILE_SET_AT_EXECUTE
    
    static var FlagDataStatic = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_STATIC
    
    static var FlagDescriptorsStaticKeepingBufferBoundsChecks = D3D12_DESCRIPTOR_RANGE_FLAG_DESCRIPTORS_STATIC_KEEPING_BUFFER_BOUNDS_CHECKS
}
