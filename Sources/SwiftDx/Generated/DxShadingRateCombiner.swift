import WinSDK

typealias DxShadingRateCombiner = D3D12_SHADING_RATE_COMBINER

public extension DxShadingRateCombiner {
    static var Passthrough = D3D12_SHADING_RATE_COMBINER_PASSTHROUGH
    
    static var Override = D3D12_SHADING_RATE_COMBINER_OVERRIDE
    
    static var Min = D3D12_SHADING_RATE_COMBINER_MIN
    
    static var Max = D3D12_SHADING_RATE_COMBINER_MAX
    
    static var Sum = D3D12_SHADING_RATE_COMBINER_SUM
}
