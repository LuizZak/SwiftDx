// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators.

import WinSDK

typealias DxShaderCacheSupportFlags = D3D12_SHADER_CACHE_SUPPORT_FLAGS

public extension DxShaderCacheSupportFlags {
    static let none = D3D12_SHADER_CACHE_SUPPORT_NONE
    
    static let singlePso = D3D12_SHADER_CACHE_SUPPORT_SINGLE_PSO
    
    static let library = D3D12_SHADER_CACHE_SUPPORT_LIBRARY
    
    static let automaticInprocCache = D3D12_SHADER_CACHE_SUPPORT_AUTOMATIC_INPROC_CACHE
    
    static let automaticDiskCache = D3D12_SHADER_CACHE_SUPPORT_AUTOMATIC_DISK_CACHE
    
    static let driverManagedCache = D3D12_SHADER_CACHE_SUPPORT_DRIVER_MANAGED_CACHE
    
    static let shaderControlClear = D3D12_SHADER_CACHE_SUPPORT_SHADER_CONTROL_CLEAR
    
    static let shaderSessionDelete = D3D12_SHADER_CACHE_SUPPORT_SHADER_SESSION_DELETE
}
