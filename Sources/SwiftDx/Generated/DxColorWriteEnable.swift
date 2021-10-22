import WinSDK

typealias DxColorWriteEnable = D3D12_COLOR_WRITE_ENABLE

public extension DxColorWriteEnable {
    static var Red = D3D12_COLOR_WRITE_ENABLE_RED
    
    static var Green = D3D12_COLOR_WRITE_ENABLE_GREEN
    
    static var Blue = D3D12_COLOR_WRITE_ENABLE_BLUE
    
    static var Alpha = D3D12_COLOR_WRITE_ENABLE_ALPHA
    
    static var All = D3D12_COLOR_WRITE_ENABLE_ALL
}
