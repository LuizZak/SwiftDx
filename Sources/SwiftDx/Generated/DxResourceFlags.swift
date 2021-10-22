import WinSDK

typealias DxResourceFlags = D3D12_RESOURCE_FLAGS

public extension DxResourceFlags {
    static var FlagNone = D3D12_RESOURCE_FLAG_NONE
    
    static var FlagAllowRenderTarget = D3D12_RESOURCE_FLAG_ALLOW_RENDER_TARGET
    
    static var FlagAllowDepthStencil = D3D12_RESOURCE_FLAG_ALLOW_DEPTH_STENCIL
    
    static var FlagAllowUnorderedAccess = D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS
    
    static var FlagDenyShaderResource = D3D12_RESOURCE_FLAG_DENY_SHADER_RESOURCE
    
    static var FlagAllowCrossAdapter = D3D12_RESOURCE_FLAG_ALLOW_CROSS_ADAPTER
    
    static var FlagAllowSimultaneousAccess = D3D12_RESOURCE_FLAG_ALLOW_SIMULTANEOUS_ACCESS
    
    static var FlagVideoDecodeReferenceOnly = D3D12_RESOURCE_FLAG_VIDEO_DECODE_REFERENCE_ONLY
    
    static var FlagVideoEncodeReferenceOnly = D3D12_RESOURCE_FLAG_VIDEO_ENCODE_REFERENCE_ONLY
}
