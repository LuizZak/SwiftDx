import WinSDK

typealias DxWaveMmaDimension = D3D12_WAVE_MMA_DIMENSION

public extension DxWaveMmaDimension {
    static var Invalid = D3D12_WAVE_MMA_DIMENSION_INVALID
    
    static var Dimension16 = D3D12_WAVE_MMA_DIMENSION_16
    
    static var Dimension64 = D3D12_WAVE_MMA_DIMENSION_64
}
