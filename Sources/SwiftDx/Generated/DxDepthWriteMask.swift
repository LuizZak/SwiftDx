import WinSDK

typealias DxDepthWriteMask = D3D12_DEPTH_WRITE_MASK

public extension DxDepthWriteMask {
    static var Zero = D3D12_DEPTH_WRITE_MASK_ZERO
    
    static var All = D3D12_DEPTH_WRITE_MASK_ALL
}
