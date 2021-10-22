import WinSDK

typealias DxResourceStates = D3D12_RESOURCE_STATES

public extension DxResourceStates {
    static var StateCommon = D3D12_RESOURCE_STATE_COMMON
    
    static var StateVertexAndConstantBuffer = D3D12_RESOURCE_STATE_VERTEX_AND_CONSTANT_BUFFER
    
    static var StateIndexBuffer = D3D12_RESOURCE_STATE_INDEX_BUFFER
    
    static var StateRenderTarget = D3D12_RESOURCE_STATE_RENDER_TARGET
    
    static var StateUnorderedAccess = D3D12_RESOURCE_STATE_UNORDERED_ACCESS
    
    static var StateDepthWrite = D3D12_RESOURCE_STATE_DEPTH_WRITE
    
    static var StateDepthRead = D3D12_RESOURCE_STATE_DEPTH_READ
    
    static var StateNonPixelShaderResource = D3D12_RESOURCE_STATE_NON_PIXEL_SHADER_RESOURCE
    
    static var StatePixelShaderResource = D3D12_RESOURCE_STATE_PIXEL_SHADER_RESOURCE
    
    static var StateStreamOut = D3D12_RESOURCE_STATE_STREAM_OUT
    
    static var StateIndirectArgument = D3D12_RESOURCE_STATE_INDIRECT_ARGUMENT
    
    static var StateCopyDest = D3D12_RESOURCE_STATE_COPY_DEST
    
    static var StateCopySource = D3D12_RESOURCE_STATE_COPY_SOURCE
    
    static var StateResolveDest = D3D12_RESOURCE_STATE_RESOLVE_DEST
    
    static var StateResolveSource = D3D12_RESOURCE_STATE_RESOLVE_SOURCE
    
    static var StateRaytracingAccelerationStructure = D3D12_RESOURCE_STATE_RAYTRACING_ACCELERATION_STRUCTURE
    
    static var StateShadingRateSource = D3D12_RESOURCE_STATE_SHADING_RATE_SOURCE
    
    static var StateGenericRead = D3D12_RESOURCE_STATE_GENERIC_READ
    
    static var StateAllShaderResource = D3D12_RESOURCE_STATE_ALL_SHADER_RESOURCE
    
    static var StatePresent = D3D12_RESOURCE_STATE_PRESENT
    
    static var StatePredication = D3D12_RESOURCE_STATE_PREDICATION
    
    static var StateVideoDecodeRead = D3D12_RESOURCE_STATE_VIDEO_DECODE_READ
    
    static var StateVideoDecodeWrite = D3D12_RESOURCE_STATE_VIDEO_DECODE_WRITE
    
    static var StateVideoProcessRead = D3D12_RESOURCE_STATE_VIDEO_PROCESS_READ
    
    static var StateVideoProcessWrite = D3D12_RESOURCE_STATE_VIDEO_PROCESS_WRITE
    
    static var StateVideoEncodeRead = D3D12_RESOURCE_STATE_VIDEO_ENCODE_READ
    
    static var StateVideoEncodeWrite = D3D12_RESOURCE_STATE_VIDEO_ENCODE_WRITE
}
