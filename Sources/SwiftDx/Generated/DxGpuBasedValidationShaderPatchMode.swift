// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators!

import WinSDK

typealias DxGpuBasedValidationShaderPatchMode = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE

public extension DxGpuBasedValidationShaderPatchMode {
    static let none = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_NONE
    
    static let stateTrackingOnly = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_STATE_TRACKING_ONLY
    
    static let unguardedValidation = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_UNGUARDED_VALIDATION
    
    static let guardedValidation = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_GUARDED_VALIDATION
    
    static let numGpuBasedValidationShaderPatchModes = NUM_D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODES
}
