import WinSDK

typealias DxShaderCacheSupportFlags = D3D12_SHADER_CACHE_SUPPORT_FLAGS

public extension DxShaderCacheSupportFlags {
    static var None = D3D12_SHADER_CACHE_SUPPORT_NONE
    
    static var SinglePso = D3D12_SHADER_CACHE_SUPPORT_SINGLE_PSO
    
    static var Library = D3D12_SHADER_CACHE_SUPPORT_LIBRARY
    
    static var AutomaticInprocCache = D3D12_SHADER_CACHE_SUPPORT_AUTOMATIC_INPROC_CACHE
    
    static var AutomaticDiskCache = D3D12_SHADER_CACHE_SUPPORT_AUTOMATIC_DISK_CACHE
    
    static var DriverManagedCache = D3D12_SHADER_CACHE_SUPPORT_DRIVER_MANAGED_CACHE
}
