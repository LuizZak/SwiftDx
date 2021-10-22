import WinSDK

typealias DxIndirectArgumentType = D3D12_INDIRECT_ARGUMENT_TYPE

public extension DxIndirectArgumentType {
    static var Draw = D3D12_INDIRECT_ARGUMENT_TYPE_DRAW
    
    static var DrawIndexed = D3D12_INDIRECT_ARGUMENT_TYPE_DRAW_INDEXED
    
    static var Dispatch = D3D12_INDIRECT_ARGUMENT_TYPE_DISPATCH
    
    static var VertexBufferView = D3D12_INDIRECT_ARGUMENT_TYPE_VERTEX_BUFFER_VIEW
    
    static var IndexBufferView = D3D12_INDIRECT_ARGUMENT_TYPE_INDEX_BUFFER_VIEW
    
    static var Constant = D3D12_INDIRECT_ARGUMENT_TYPE_CONSTANT
    
    static var ConstantBufferView = D3D12_INDIRECT_ARGUMENT_TYPE_CONSTANT_BUFFER_VIEW
    
    static var ShaderResourceView = D3D12_INDIRECT_ARGUMENT_TYPE_SHADER_RESOURCE_VIEW
    
    static var UnorderedAccessView = D3D12_INDIRECT_ARGUMENT_TYPE_UNORDERED_ACCESS_VIEW
    
    static var DispatchRays = D3D12_INDIRECT_ARGUMENT_TYPE_DISPATCH_RAYS
    
    static var DispatchMesh = D3D12_INDIRECT_ARGUMENT_TYPE_DISPATCH_MESH
}
