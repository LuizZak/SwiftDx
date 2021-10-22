import WinSDK

typealias DxGpuBasedValidationFlags = D3D12_GPU_BASED_VALIDATION_FLAGS

public extension DxGpuBasedValidationFlags {
    static var None = D3D12_GPU_BASED_VALIDATION_FLAGS_NONE
    
    static var DisableStateTracking = D3D12_GPU_BASED_VALIDATION_FLAGS_DISABLE_STATE_TRACKING
}
