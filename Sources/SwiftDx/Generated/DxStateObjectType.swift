import WinSDK

typealias DxStateObjectType = D3D12_STATE_OBJECT_TYPE

public extension DxStateObjectType {
    static var Collection = D3D12_STATE_OBJECT_TYPE_COLLECTION
    
    static var RaytracingPipeline = D3D12_STATE_OBJECT_TYPE_RAYTRACING_PIPELINE
}
