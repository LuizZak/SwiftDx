import WinSDK

typealias DxShaderCacheFlags = D3D12_SHADER_CACHE_FLAGS

public extension DxShaderCacheFlags {
    static var FlagNone = D3D12_SHADER_CACHE_FLAG_NONE
    
    static var FlagDriverVersioned = D3D12_SHADER_CACHE_FLAG_DRIVER_VERSIONED
    
    static var FlagUseWorkingDir = D3D12_SHADER_CACHE_FLAG_USE_WORKING_DIR
}
