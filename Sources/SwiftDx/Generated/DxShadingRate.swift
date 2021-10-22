import WinSDK

typealias DxShadingRate = D3D12_SHADING_RATE

public extension DxShadingRate {
    static var Rate1x1 = D3D12_SHADING_RATE_1X1
    
    static var Rate1x2 = D3D12_SHADING_RATE_1X2
    
    static var Rate2x1 = D3D12_SHADING_RATE_2X1
    
    static var Rate2x2 = D3D12_SHADING_RATE_2X2
    
    static var Rate2x4 = D3D12_SHADING_RATE_2X4
    
    static var Rate4x2 = D3D12_SHADING_RATE_4X2
    
    static var Rate4x4 = D3D12_SHADING_RATE_4X4
}
