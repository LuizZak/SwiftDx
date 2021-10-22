import WinSDK

typealias DxRootDescriptorFlags = D3D12_ROOT_DESCRIPTOR_FLAGS

public extension DxRootDescriptorFlags {
    static var FlagNone = D3D12_ROOT_DESCRIPTOR_FLAG_NONE
    
    static var FlagDataVolatile = D3D12_ROOT_DESCRIPTOR_FLAG_DATA_VOLATILE
    
    static var FlagDataStaticWhileSetAtExecute = D3D12_ROOT_DESCRIPTOR_FLAG_DATA_STATIC_WHILE_SET_AT_EXECUTE
    
    static var FlagDataStatic = D3D12_ROOT_DESCRIPTOR_FLAG_DATA_STATIC
}
