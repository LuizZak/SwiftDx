import WinSDK

typealias DxCullMode = D3D12_CULL_MODE

public extension DxCullMode {
    static var None = D3D12_CULL_MODE_NONE
    
    static var Front = D3D12_CULL_MODE_FRONT
    
    static var Back = D3D12_CULL_MODE_BACK
}
