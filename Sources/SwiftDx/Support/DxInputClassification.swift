import WinSDK

typealias DxInputClassification = D3D12_INPUT_CLASSIFICATION

extension DxInputClassification {
    /// Input data is per-vertex data.
    static var perVertexData: Self { D3D12_INPUT_CLASSIFICATION_PER_VERTEX_DATA }
    
    /// Input data is per-instance data.
    static var perInstanceData: Self { D3D12_INPUT_CLASSIFICATION_PER_INSTANCE_DATA }
}
