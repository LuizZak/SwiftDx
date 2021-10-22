import WinSDK

typealias DxBackgroundProcessingMode = D3D12_BACKGROUND_PROCESSING_MODE

public extension DxBackgroundProcessingMode {
    static var Allowed = D3D12_BACKGROUND_PROCESSING_MODE_ALLOWED
    
    static var AllowIntrusiveMeasurements = D3D12_BACKGROUND_PROCESSING_MODE_ALLOW_INTRUSIVE_MEASUREMENTS
    
    static var DisableBackgroundWork = D3D12_BACKGROUND_PROCESSING_MODE_DISABLE_BACKGROUND_WORK
    
    static var DisableProfilingBySystem = D3D12_BACKGROUND_PROCESSING_MODE_DISABLE_PROFILING_BY_SYSTEM
}
