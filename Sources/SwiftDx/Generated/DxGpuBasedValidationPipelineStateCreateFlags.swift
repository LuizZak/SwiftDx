import WinSDK

typealias DxGpuBasedValidationPipelineStateCreateFlags = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAGS

public extension DxGpuBasedValidationPipelineStateCreateFlags {
    static var FlagNone = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_NONE
    
    static var FlagFrontLoadCreateTrackingOnlyShaders = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_TRACKING_ONLY_SHADERS
    
    static var FlagFrontLoadCreateUnguardedValidationShaders = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_UNGUARDED_VALIDATION_SHADERS
    
    static var FlagFrontLoadCreateGuardedValidationShaders = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_GUARDED_VALIDATION_SHADERS
    
    static var ValidMask = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAGS_VALID_MASK
}