import WinSDK

typealias DxConservativeRasterizationMode = D3D12_CONSERVATIVE_RASTERIZATION_MODE

public extension DxConservativeRasterizationMode {
    static var Off = D3D12_CONSERVATIVE_RASTERIZATION_MODE_OFF
    
    static var On = D3D12_CONSERVATIVE_RASTERIZATION_MODE_ON
}
