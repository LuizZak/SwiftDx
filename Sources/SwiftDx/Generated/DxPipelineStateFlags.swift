import WinSDK

typealias DxPipelineStateFlags = D3D12_PIPELINE_STATE_FLAGS

public extension DxPipelineStateFlags {
    static var FlagNone = D3D12_PIPELINE_STATE_FLAG_NONE
    
    static var FlagToolDebug = D3D12_PIPELINE_STATE_FLAG_TOOL_DEBUG
}
