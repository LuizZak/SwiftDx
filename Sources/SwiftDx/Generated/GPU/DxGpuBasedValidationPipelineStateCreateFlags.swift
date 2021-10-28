// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators.

import WinSDK

typealias DxGPUBasedValidationPipelineStateCreateFlags = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAGS

public extension DxGPUBasedValidationPipelineStateCreateFlags {
    static let none = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_NONE
    
    static let frontLoadCreateTrackingOnlyShaderS = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_TRACKING_ONLY_SHADERS
    
    static let frontLoadCreateUnguardedValidationShaderS = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_UNGUARDED_VALIDATION_SHADERS
    
    static let frontLoadCreateGuardedValidationShaderS = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAG_FRONT_LOAD_CREATE_GUARDED_VALIDATION_SHADERS
    
    static let validMask = D3D12_GPU_BASED_VALIDATION_PIPELINE_STATE_CREATE_FLAGS_VALID_MASK
}
