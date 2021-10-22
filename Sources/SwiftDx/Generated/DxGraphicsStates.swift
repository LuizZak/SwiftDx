import WinSDK

typealias DxGraphicsStates = D3D12_GRAPHICS_STATES

public extension DxGraphicsStates {
    static var StateNone = D3D12_GRAPHICS_STATE_NONE
    
    static var StateIaVertexBuffers = D3D12_GRAPHICS_STATE_IA_VERTEX_BUFFERS
    
    static var StateIaIndexBuffer = D3D12_GRAPHICS_STATE_IA_INDEX_BUFFER
    
    static var StateIaPrimitiveTopology = D3D12_GRAPHICS_STATE_IA_PRIMITIVE_TOPOLOGY
    
    static var StateDescriptorHeap = D3D12_GRAPHICS_STATE_DESCRIPTOR_HEAP
    
    static var StateGraphicsRootSignature = D3D12_GRAPHICS_STATE_GRAPHICS_ROOT_SIGNATURE
    
    static var StateComputeRootSignature = D3D12_GRAPHICS_STATE_COMPUTE_ROOT_SIGNATURE
    
    static var StateRsViewports = D3D12_GRAPHICS_STATE_RS_VIEWPORTS
    
    static var StateRsScissorRects = D3D12_GRAPHICS_STATE_RS_SCISSOR_RECTS
    
    static var StatePredication = D3D12_GRAPHICS_STATE_PREDICATION
    
    static var StateOmRenderTargets = D3D12_GRAPHICS_STATE_OM_RENDER_TARGETS
    
    static var StateOmStencilRef = D3D12_GRAPHICS_STATE_OM_STENCIL_REF
    
    static var StateOmBlendFactor = D3D12_GRAPHICS_STATE_OM_BLEND_FACTOR
    
    static var StatePipelineState = D3D12_GRAPHICS_STATE_PIPELINE_STATE
    
    static var StateSoTargets = D3D12_GRAPHICS_STATE_SO_TARGETS
    
    static var StateOmDepthBounds = D3D12_GRAPHICS_STATE_OM_DEPTH_BOUNDS
    
    static var StateSamplePositions = D3D12_GRAPHICS_STATE_SAMPLE_POSITIONS
    
    static var StateViewInstanceMask = D3D12_GRAPHICS_STATE_VIEW_INSTANCE_MASK
}
