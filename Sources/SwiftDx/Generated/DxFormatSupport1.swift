import WinSDK

typealias DxFormatSupport1 = D3D12_FORMAT_SUPPORT1

public extension DxFormatSupport1 {
    static var None = D3D12_FORMAT_SUPPORT1_NONE
    
    static var Buffer = D3D12_FORMAT_SUPPORT1_BUFFER
    
    static var IaVertexBuffer = D3D12_FORMAT_SUPPORT1_IA_VERTEX_BUFFER
    
    static var IaIndexBuffer = D3D12_FORMAT_SUPPORT1_IA_INDEX_BUFFER
    
    static var SoBuffer = D3D12_FORMAT_SUPPORT1_SO_BUFFER
    
    static var Texture1d = D3D12_FORMAT_SUPPORT1_TEXTURE1D
    
    static var Texture2d = D3D12_FORMAT_SUPPORT1_TEXTURE2D
    
    static var Texture3d = D3D12_FORMAT_SUPPORT1_TEXTURE3D
    
    static var Texturecube = D3D12_FORMAT_SUPPORT1_TEXTURECUBE
    
    static var ShaderLoad = D3D12_FORMAT_SUPPORT1_SHADER_LOAD
    
    static var ShaderSample = D3D12_FORMAT_SUPPORT1_SHADER_SAMPLE
    
    static var ShaderSampleComparison = D3D12_FORMAT_SUPPORT1_SHADER_SAMPLE_COMPARISON
    
    static var ShaderSampleMonoText = D3D12_FORMAT_SUPPORT1_SHADER_SAMPLE_MONO_TEXT
    
    static var Mip = D3D12_FORMAT_SUPPORT1_MIP
    
    static var RenderTarget = D3D12_FORMAT_SUPPORT1_RENDER_TARGET
    
    static var Blendable = D3D12_FORMAT_SUPPORT1_BLENDABLE
    
    static var DepthStencil = D3D12_FORMAT_SUPPORT1_DEPTH_STENCIL
    
    static var MultisampleResolve = D3D12_FORMAT_SUPPORT1_MULTISAMPLE_RESOLVE
    
    static var Display = D3D12_FORMAT_SUPPORT1_DISPLAY
    
    static var CastWithinBitLayout = D3D12_FORMAT_SUPPORT1_CAST_WITHIN_BIT_LAYOUT
    
    static var MultisampleRendertarget = D3D12_FORMAT_SUPPORT1_MULTISAMPLE_RENDERTARGET
    
    static var MultisampleLoad = D3D12_FORMAT_SUPPORT1_MULTISAMPLE_LOAD
    
    static var ShaderGather = D3D12_FORMAT_SUPPORT1_SHADER_GATHER
    
    static var BackBufferCast = D3D12_FORMAT_SUPPORT1_BACK_BUFFER_CAST
    
    static var TypedUnorderedAccessView = D3D12_FORMAT_SUPPORT1_TYPED_UNORDERED_ACCESS_VIEW
    
    static var ShaderGatherComparison = D3D12_FORMAT_SUPPORT1_SHADER_GATHER_COMPARISON
    
    static var DecoderOutput = D3D12_FORMAT_SUPPORT1_DECODER_OUTPUT
    
    static var VideoProcessorOutput = D3D12_FORMAT_SUPPORT1_VIDEO_PROCESSOR_OUTPUT
    
    static var VideoProcessorInput = D3D12_FORMAT_SUPPORT1_VIDEO_PROCESSOR_INPUT
    
    static var VideoEncoder = D3D12_FORMAT_SUPPORT1_VIDEO_ENCODER
}
