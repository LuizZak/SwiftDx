import WinSDK

typealias DxShaderCacheControlFlags = D3D12_SHADER_CACHE_CONTROL_FLAGS

public extension DxShaderCacheControlFlags {
    static var FlagDisable = D3D12_SHADER_CACHE_CONTROL_FLAG_DISABLE
    
    static var FlagEnable = D3D12_SHADER_CACHE_CONTROL_FLAG_ENABLE
    
    static var FlagClear = D3D12_SHADER_CACHE_CONTROL_FLAG_CLEAR
}
