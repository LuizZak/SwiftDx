import WinSDK

typealias DxRaytracingGeometryType = D3D12_RAYTRACING_GEOMETRY_TYPE

public extension DxRaytracingGeometryType {
    static var Triangles = D3D12_RAYTRACING_GEOMETRY_TYPE_TRIANGLES
    
    static var ProceduralPrimitiveAabbs = D3D12_RAYTRACING_GEOMETRY_TYPE_PROCEDURAL_PRIMITIVE_AABBS
}
