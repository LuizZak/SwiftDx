import WinSDK

typealias DxHitKind = D3D12_HIT_KIND

public extension DxHitKind {
    static var TriangleFrontFace = D3D12_HIT_KIND_TRIANGLE_FRONT_FACE
    
    static var TriangleBackFace = D3D12_HIT_KIND_TRIANGLE_BACK_FACE
}
