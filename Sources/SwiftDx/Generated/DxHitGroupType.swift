import WinSDK

typealias DxHitGroupType = D3D12_HIT_GROUP_TYPE

public extension DxHitGroupType {
    static var Triangles = D3D12_HIT_GROUP_TYPE_TRIANGLES
    
    static var ProceduralPrimitive = D3D12_HIT_GROUP_TYPE_PROCEDURAL_PRIMITIVE
}
