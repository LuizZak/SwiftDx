import WinSDK

typealias DxStateSubobjectType = D3D12_STATE_SUBOBJECT_TYPE

public extension DxStateSubobjectType {
    static var StateObjectConfig = D3D12_STATE_SUBOBJECT_TYPE_STATE_OBJECT_CONFIG
    
    static var GlobalRootSignature = D3D12_STATE_SUBOBJECT_TYPE_GLOBAL_ROOT_SIGNATURE
    
    static var LocalRootSignature = D3D12_STATE_SUBOBJECT_TYPE_LOCAL_ROOT_SIGNATURE
    
    static var NodeMask = D3D12_STATE_SUBOBJECT_TYPE_NODE_MASK
    
    static var DxilLibrary = D3D12_STATE_SUBOBJECT_TYPE_DXIL_LIBRARY
    
    static var ExistingCollection = D3D12_STATE_SUBOBJECT_TYPE_EXISTING_COLLECTION
    
    static var SubobjectToExportsAssociation = D3D12_STATE_SUBOBJECT_TYPE_SUBOBJECT_TO_EXPORTS_ASSOCIATION
    
    static var DxilSubobjectToExportsAssociation = D3D12_STATE_SUBOBJECT_TYPE_DXIL_SUBOBJECT_TO_EXPORTS_ASSOCIATION
    
    static var RaytracingShaderConfig = D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_SHADER_CONFIG
    
    static var RaytracingPipelineConfig = D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_PIPELINE_CONFIG
    
    static var HitGroup = D3D12_STATE_SUBOBJECT_TYPE_HIT_GROUP
    
    static var RaytracingPipelineConfig1 = D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_PIPELINE_CONFIG1
    
    static var MaxValid = D3D12_STATE_SUBOBJECT_TYPE_MAX_VALID
}
