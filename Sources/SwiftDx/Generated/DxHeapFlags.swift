// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators.

import WinSDK

typealias DxHeapFlags = D3D12_HEAP_FLAGS

public extension DxHeapFlags {
    static let none = D3D12_HEAP_FLAG_NONE
    
    static let shared = D3D12_HEAP_FLAG_SHARED
    
    static let denyBuffers = D3D12_HEAP_FLAG_DENY_BUFFERS
    
    static let allowDisplay = D3D12_HEAP_FLAG_ALLOW_DISPLAY
    
    static let sharedCrossAdapter = D3D12_HEAP_FLAG_SHARED_CROSS_ADAPTER
    
    static let denyRtDsTextures = D3D12_HEAP_FLAG_DENY_RT_DS_TEXTURES
    
    static let denyNonRtDsTextures = D3D12_HEAP_FLAG_DENY_NON_RT_DS_TEXTURES
    
    static let hardwareProtected = D3D12_HEAP_FLAG_HARDWARE_PROTECTED
    
    static let allowWriteWatch = D3D12_HEAP_FLAG_ALLOW_WRITE_WATCH
    
    static let allowShaderAtomics = D3D12_HEAP_FLAG_ALLOW_SHADER_ATOMICS
    
    static let createNotResident = D3D12_HEAP_FLAG_CREATE_NOT_RESIDENT
    
    static let createNotZeroed = D3D12_HEAP_FLAG_CREATE_NOT_ZEROED
    
    static let allowAllBuffersAndTextures = D3D12_HEAP_FLAG_ALLOW_ALL_BUFFERS_AND_TEXTURES
    
    static let allowOnlyBuffers = D3D12_HEAP_FLAG_ALLOW_ONLY_BUFFERS
    
    static let allowOnlyNonRtDsTextures = D3D12_HEAP_FLAG_ALLOW_ONLY_NON_RT_DS_TEXTURES
    
    static let allowOnlyRtDsTextures = D3D12_HEAP_FLAG_ALLOW_ONLY_RT_DS_TEXTURES
}
