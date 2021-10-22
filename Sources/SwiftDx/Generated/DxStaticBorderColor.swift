import WinSDK

typealias DxStaticBorderColor = D3D12_STATIC_BORDER_COLOR

public extension DxStaticBorderColor {
    static var TransparentBlack = D3D12_STATIC_BORDER_COLOR_TRANSPARENT_BLACK
    
    static var OpaqueBlack = D3D12_STATIC_BORDER_COLOR_OPAQUE_BLACK
    
    static var OpaqueWhite = D3D12_STATIC_BORDER_COLOR_OPAQUE_WHITE
}
