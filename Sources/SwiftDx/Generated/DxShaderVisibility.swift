import WinSDK

typealias DxShaderVisibility = D3D12_SHADER_VISIBILITY

public extension DxShaderVisibility {
    static var All = D3D12_SHADER_VISIBILITY_ALL
    
    static var Vertex = D3D12_SHADER_VISIBILITY_VERTEX
    
    static var Hull = D3D12_SHADER_VISIBILITY_HULL
    
    static var Domain = D3D12_SHADER_VISIBILITY_DOMAIN
    
    static var Geometry = D3D12_SHADER_VISIBILITY_GEOMETRY
    
    static var Pixel = D3D12_SHADER_VISIBILITY_PIXEL
    
    static var Amplification = D3D12_SHADER_VISIBILITY_AMPLIFICATION
    
    static var Mesh = D3D12_SHADER_VISIBILITY_MESH
}
