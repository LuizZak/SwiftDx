import WinSDK

typealias DxInputClassification = D3D12_INPUT_CLASSIFICATION

public extension DxInputClassification {
    static var PerVertexData = D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA
    
    static var PerInstanceData = D3D12_INPUT_CLASSIFICATION_PER_INSTANCE_DATA
}
