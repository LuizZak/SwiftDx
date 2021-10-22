import WinSDK

typealias DxRenderPassEndingAccessType = D3D12_RENDER_PASS_ENDING_ACCESS_TYPE

public extension DxRenderPassEndingAccessType {
    static var Discard = D3D12_RENDER_PASS_ENDING_ACCESS_TYPE_DISCARD
    
    static var Preserve = D3D12_RENDER_PASS_ENDING_ACCESS_TYPE_PRESERVE
    
    static var Resolve = D3D12_RENDER_PASS_ENDING_ACCESS_TYPE_RESOLVE
    
    static var NoAccess = D3D12_RENDER_PASS_ENDING_ACCESS_TYPE_NO_ACCESS
}
