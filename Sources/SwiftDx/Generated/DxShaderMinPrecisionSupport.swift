import WinSDK

typealias DxShaderMinPrecisionSupport = D3D12_SHADER_MIN_PRECISION_SUPPORT

public extension DxShaderMinPrecisionSupport {
    static var None = D3D12_SHADER_MIN_PRECISION_SUPPORT_NONE
    
    static var Support10Bit = D3D12_SHADER_MIN_PRECISION_SUPPORT_10_BIT
    
    static var Support16Bit = D3D12_SHADER_MIN_PRECISION_SUPPORT_16_BIT
}
