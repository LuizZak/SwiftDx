import WinSDK

typealias DxPrimitiveTopologyType = D3D12_PRIMITIVE_TOPOLOGY_TYPE

public extension DxPrimitiveTopologyType {
    static var Undefined = D3D12_PRIMITIVE_TOPOLOGY_TYPE_UNDEFINED
    
    static var Point = D3D12_PRIMITIVE_TOPOLOGY_TYPE_POINT
    
    static var Line = D3D12_PRIMITIVE_TOPOLOGY_TYPE_LINE
    
    static var Triangle = D3D12_PRIMITIVE_TOPOLOGY_TYPE_TRIANGLE
    
    static var Patch = D3D12_PRIMITIVE_TOPOLOGY_TYPE_PATCH
}
