import WinSDK

typealias DxRaytracingGeometryFlags = D3D12_RAYTRACING_GEOMETRY_FLAGS

public extension DxRaytracingGeometryFlags {
    static var FlagNone = D3D12_RAYTRACING_GEOMETRY_FLAG_NONE
    
    static var FlagOpaque = D3D12_RAYTRACING_GEOMETRY_FLAG_OPAQUE
    
    static var FlagNoDuplicateAnyhitInvocation = D3D12_RAYTRACING_GEOMETRY_FLAG_NO_DUPLICATE_ANYHIT_INVOCATION
}
