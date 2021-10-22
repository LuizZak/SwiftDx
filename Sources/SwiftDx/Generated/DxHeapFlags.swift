import WinSDK

typealias DxHeapFlags = D3D12_HEAP_FLAGS

public extension DxHeapFlags {
    static var FlagNone = D3D12_HEAP_FLAG_NONE
    
    static var FlagShared = D3D12_HEAP_FLAG_SHARED
    
    static var FlagDenyBuffers = D3D12_HEAP_FLAG_DENY_BUFFERS
    
    static var FlagAllowDisplay = D3D12_HEAP_FLAG_ALLOW_DISPLAY
    
    static var FlagSharedCrossAdapter = D3D12_HEAP_FLAG_SHARED_CROSS_ADAPTER
    
    static var FlagDenyRtDsTextures = D3D12_HEAP_FLAG_DENY_RT_DS_TEXTURES
    
    static var FlagDenyNonRtDsTextures = D3D12_HEAP_FLAG_DENY_NON_RT_DS_TEXTURES
    
    static var FlagHardwareProtected = D3D12_HEAP_FLAG_HARDWARE_PROTECTED
    
    static var FlagAllowWriteWatch = D3D12_HEAP_FLAG_ALLOW_WRITE_WATCH
    
    static var FlagAllowShaderAtomics = D3D12_HEAP_FLAG_ALLOW_SHADER_ATOMICS
    
    static var FlagCreateNotResident = D3D12_HEAP_FLAG_CREATE_NOT_RESIDENT
    
    static var FlagCreateNotZeroed = D3D12_HEAP_FLAG_CREATE_NOT_ZEROED
    
    static var FlagAllowAllBuffersAndTextures = D3D12_HEAP_FLAG_ALLOW_ALL_BUFFERS_AND_TEXTURES
    
    static var FlagAllowOnlyBuffers = D3D12_HEAP_FLAG_ALLOW_ONLY_BUFFERS
    
    static var FlagAllowOnlyNonRtDsTextures = D3D12_HEAP_FLAG_ALLOW_ONLY_NON_RT_DS_TEXTURES
    
    static var FlagAllowOnlyRtDsTextures = D3D12_HEAP_FLAG_ALLOW_ONLY_RT_DS_TEXTURES
}
