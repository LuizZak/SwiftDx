import WinSDK

typealias DxTextureLayout = D3D12_TEXTURE_LAYOUT

public extension DxTextureLayout {
    static var Unknown = D3D12_TEXTURE_LAYOUT_UNKNOWN
    
    static var RowMajor = D3D12_TEXTURE_LAYOUT_ROW_MAJOR
    
    static var Layout64kbUndefinedSwizzle = D3D12_TEXTURE_LAYOUT_64KB_UNDEFINED_SWIZZLE
    
    static var Layout64kbStandardSwizzle = D3D12_TEXTURE_LAYOUT_64KB_STANDARD_SWIZZLE
}
