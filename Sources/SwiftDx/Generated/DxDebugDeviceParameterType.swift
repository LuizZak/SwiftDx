import WinSDK

typealias DxDebugDeviceParameterType = D3D12_DEBUG_DEVICE_PARAMETER_TYPE

public extension DxDebugDeviceParameterType {
    static var FeatureFlags = D3D12_DEBUG_DEVICE_PARAMETER_FEATURE_FLAGS
    
    static var GpuBasedValidationSettings = D3D12_DEBUG_DEVICE_PARAMETER_GPU_BASED_VALIDATION_SETTINGS
    
    static var GpuSlowdownPerformanceFactor = D3D12_DEBUG_DEVICE_PARAMETER_GPU_SLOWDOWN_PERFORMANCE_FACTOR
}
