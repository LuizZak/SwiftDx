import WinSDK

typealias DxShaderCacheMode = D3D12_SHADER_CACHE_MODE

public extension DxShaderCacheMode {
    static var Memory = D3D12_SHADER_CACHE_MODE_MEMORY
    
    static var Disk = D3D12_SHADER_CACHE_MODE_DISK
}
