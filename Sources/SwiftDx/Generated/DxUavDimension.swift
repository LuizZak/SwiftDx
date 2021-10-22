import WinSDK

typealias DxUavDimension = D3D12_UAV_DIMENSION

public extension DxUavDimension {
    static var Unknown = D3D12_UAV_DIMENSION_UNKNOWN
    
    static var Buffer = D3D12_UAV_DIMENSION_BUFFER
    
    static var Texture1d = D3D12_UAV_DIMENSION_TEXTURE1D
    
    static var Texture1darray = D3D12_UAV_DIMENSION_TEXTURE1DARRAY
    
    static var Texture2d = D3D12_UAV_DIMENSION_TEXTURE2D
    
    static var Texture2darray = D3D12_UAV_DIMENSION_TEXTURE2DARRAY
    
    static var Texture3d = D3D12_UAV_DIMENSION_TEXTURE3D
}
