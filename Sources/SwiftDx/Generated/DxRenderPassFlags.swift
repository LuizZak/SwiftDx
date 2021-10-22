import WinSDK

typealias DxRenderPassFlags = D3D12_RENDER_PASS_FLAGS

public extension DxRenderPassFlags {
    static var FlagNone = D3D12_RENDER_PASS_FLAG_NONE
    
    static var FlagAllowUavWrites = D3D12_RENDER_PASS_FLAG_ALLOW_UAV_WRITES
    
    static var FlagSuspendingPass = D3D12_RENDER_PASS_FLAG_SUSPENDING_PASS
    
    static var FlagResumingPass = D3D12_RENDER_PASS_FLAG_RESUMING_PASS
}
