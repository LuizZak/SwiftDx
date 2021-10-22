import WinSDK

typealias DxResolveMode = D3D12_RESOLVE_MODE

public extension DxResolveMode {
    static var Decompress = D3D12_RESOLVE_MODE_DECOMPRESS
    
    static var Min = D3D12_RESOLVE_MODE_MIN
    
    static var Max = D3D12_RESOLVE_MODE_MAX
    
    static var Average = D3D12_RESOLVE_MODE_AVERAGE
    
    static var EncodeSamplerFeedback = D3D12_RESOLVE_MODE_ENCODE_SAMPLER_FEEDBACK
    
    static var DecodeSamplerFeedback = D3D12_RESOLVE_MODE_DECODE_SAMPLER_FEEDBACK
}
