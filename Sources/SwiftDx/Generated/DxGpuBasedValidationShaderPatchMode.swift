import WinSDK

typealias DxGpuBasedValidationShaderPatchMode = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE

public extension DxGpuBasedValidationShaderPatchMode {
    static var None = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_NONE
    
    static var StateTrackingOnly = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_STATE_TRACKING_ONLY
    
    static var UnguardedValidation = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_UNGUARDED_VALIDATION
    
    static var GuardedValidation = D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODE_GUARDED_VALIDATION
    
    static var NumGpuBasedValidationShaderPatchModes = NUM_D3D12_GPU_BASED_VALIDATION_SHADER_PATCH_MODES
}
