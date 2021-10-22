import WinSDK

typealias DxRaytracingPipelineFlags = D3D12_RAYTRACING_PIPELINE_FLAGS

public extension DxRaytracingPipelineFlags {
    static var FlagNone = D3D12_RAYTRACING_PIPELINE_FLAG_NONE
    
    static var FlagSkipTriangles = D3D12_RAYTRACING_PIPELINE_FLAG_SKIP_TRIANGLES
    
    static var FlagSkipProceduralPrimitives = D3D12_RAYTRACING_PIPELINE_FLAG_SKIP_PROCEDURAL_PRIMITIVES
}
