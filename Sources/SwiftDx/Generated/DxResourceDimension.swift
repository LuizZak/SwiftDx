import WinSDK

typealias DxResourceDimension = D3D12_RESOURCE_DIMENSION

public extension DxResourceDimension {
    static var Unknown = D3D12_RESOURCE_DIMENSION_UNKNOWN
    
    static var Buffer = D3D12_RESOURCE_DIMENSION_BUFFER
    
    static var Texture1d = D3D12_RESOURCE_DIMENSION_TEXTURE1D
    
    static var Texture2d = D3D12_RESOURCE_DIMENSION_TEXTURE2D
    
    static var Texture3d = D3D12_RESOURCE_DIMENSION_TEXTURE3D
}
