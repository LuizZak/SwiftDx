import WinSDK

typealias DxDsvDimension = D3D12_DSV_DIMENSION

public extension DxDsvDimension {
    static var Unknown = D3D12_DSV_DIMENSION_UNKNOWN
    
    static var Texture1d = D3D12_DSV_DIMENSION_TEXTURE1D
    
    static var Texture1darray = D3D12_DSV_DIMENSION_TEXTURE1DARRAY
    
    static var Texture2d = D3D12_DSV_DIMENSION_TEXTURE2D
    
    static var Texture2darray = D3D12_DSV_DIMENSION_TEXTURE2DARRAY
    
    static var Texture2dms = D3D12_DSV_DIMENSION_TEXTURE2DMS
    
    static var Texture2dmsarray = D3D12_DSV_DIMENSION_TEXTURE2DMSARRAY
}
