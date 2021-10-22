import WinSDK

typealias DxCommandQueuePriority = D3D12_COMMAND_QUEUE_PRIORITY

public extension DxCommandQueuePriority {
    static var Normal = D3D12_COMMAND_QUEUE_PRIORITY_NORMAL
    
    static var High = D3D12_COMMAND_QUEUE_PRIORITY_HIGH
    
    static var GlobalRealtime = D3D12_COMMAND_QUEUE_PRIORITY_GLOBAL_REALTIME
}
