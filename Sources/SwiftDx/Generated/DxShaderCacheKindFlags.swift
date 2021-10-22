import WinSDK

typealias DxShaderCacheKindFlags = D3D12_SHADER_CACHE_KIND_FLAGS

public extension DxShaderCacheKindFlags {
    static var FlagImplicitD3dCacheForDriver = D3D12_SHADER_CACHE_KIND_FLAG_IMPLICIT_D3D_CACHE_FOR_DRIVER
    
    static var FlagImplicitD3dConversions = D3D12_SHADER_CACHE_KIND_FLAG_IMPLICIT_D3D_CONVERSIONS
    
    static var FlagImplicitDriverManaged = D3D12_SHADER_CACHE_KIND_FLAG_IMPLICIT_DRIVER_MANAGED
    
    static var FlagApplicationManaged = D3D12_SHADER_CACHE_KIND_FLAG_APPLICATION_MANAGED
}
