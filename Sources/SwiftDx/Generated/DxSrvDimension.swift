import WinSDK

typealias DxSrvDimension = D3D12_SRV_DIMENSION

public extension DxSrvDimension {
    static var Unknown = D3D12_SRV_DIMENSION_UNKNOWN
    
    static var Buffer = D3D12_SRV_DIMENSION_BUFFER
    
    static var Texture1d = D3D12_SRV_DIMENSION_TEXTURE1D
    
    static var Texture1darray = D3D12_SRV_DIMENSION_TEXTURE1DARRAY
    
    static var Texture2d = D3D12_SRV_DIMENSION_TEXTURE2D
    
    static var Texture2darray = D3D12_SRV_DIMENSION_TEXTURE2DARRAY
    
    static var Texture2dms = D3D12_SRV_DIMENSION_TEXTURE2DMS
    
    static var Texture2dmsarray = D3D12_SRV_DIMENSION_TEXTURE2DMSARRAY
    
    static var Texture3d = D3D12_SRV_DIMENSION_TEXTURE3D
    
    static var Texturecube = D3D12_SRV_DIMENSION_TEXTURECUBE
    
    static var Texturecubearray = D3D12_SRV_DIMENSION_TEXTURECUBEARRAY
    
    static var RaytracingAccelerationStructure = D3D12_SRV_DIMENSION_RAYTRACING_ACCELERATION_STRUCTURE
}
