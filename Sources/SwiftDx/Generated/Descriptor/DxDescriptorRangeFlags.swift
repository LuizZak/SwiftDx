// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators.

import WinSDK

typealias DxDescriptorRangeFlags = D3D12_DESCRIPTOR_RANGE_FLAGS

public extension DxDescriptorRangeFlags {
    static let none = D3D12_DESCRIPTOR_RANGE_FLAG_NONE
    
    static let descriptorsVolatile = D3D12_DESCRIPTOR_RANGE_FLAG_DESCRIPTORS_VOLATILE
    
    static let dataVolatile = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_VOLATILE
    
    static let dataStaticWhileSetAtExecute = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_STATIC_WHILE_SET_AT_EXECUTE
    
    static let dataStatic = D3D12_DESCRIPTOR_RANGE_FLAG_DATA_STATIC
    
    static let descriptorsStaticKeepingBufferBoundsChecks = D3D12_DESCRIPTOR_RANGE_FLAG_DESCRIPTORS_STATIC_KEEPING_BUFFER_BOUNDS_CHECKS
}
