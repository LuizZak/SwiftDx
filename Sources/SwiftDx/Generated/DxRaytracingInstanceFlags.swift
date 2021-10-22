import WinSDK

typealias DxRaytracingInstanceFlags = D3D12_RAYTRACING_INSTANCE_FLAGS

public extension DxRaytracingInstanceFlags {
    static var FlagNone = D3D12_RAYTRACING_INSTANCE_FLAG_NONE
    
    static var FlagTriangleCullDisable = D3D12_RAYTRACING_INSTANCE_FLAG_TRIANGLE_CULL_DISABLE
    
    static var FlagTriangleFrontCounterclockwise = D3D12_RAYTRACING_INSTANCE_FLAG_TRIANGLE_FRONT_COUNTERCLOCKWISE
    
    static var FlagForceOpaque = D3D12_RAYTRACING_INSTANCE_FLAG_FORCE_OPAQUE
    
    static var FlagForceNonOpaque = D3D12_RAYTRACING_INSTANCE_FLAG_FORCE_NON_OPAQUE
}
