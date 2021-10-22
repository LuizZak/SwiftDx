import WinSDK

typealias DxCommandQueueFlags = D3D12_COMMAND_QUEUE_FLAGS

public extension DxCommandQueueFlags {
    static var FlagNone = D3D12_COMMAND_QUEUE_FLAG_NONE
    
    static var FlagDisableGpuTimeout = D3D12_COMMAND_QUEUE_FLAG_DISABLE_GPU_TIMEOUT
}
