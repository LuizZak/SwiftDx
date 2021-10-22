import WinSDK

typealias DxRenderPassBeginningAccessType = D3D12_RENDER_PASS_BEGINNING_ACCESS_TYPE

public extension DxRenderPassBeginningAccessType {
    static var Discard = D3D12_RENDER_PASS_BEGINNING_ACCESS_TYPE_DISCARD
    
    static var Preserve = D3D12_RENDER_PASS_BEGINNING_ACCESS_TYPE_PRESERVE
    
    static var Clear = D3D12_RENDER_PASS_BEGINNING_ACCESS_TYPE_CLEAR
    
    static var NoAccess = D3D12_RENDER_PASS_BEGINNING_ACCESS_TYPE_NO_ACCESS
}
