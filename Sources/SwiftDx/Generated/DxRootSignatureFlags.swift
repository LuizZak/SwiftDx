import WinSDK

typealias DxRootSignatureFlags = D3D12_ROOT_SIGNATURE_FLAGS

public extension DxRootSignatureFlags {
    static var FlagNone = D3D12_ROOT_SIGNATURE_FLAG_NONE
    
    static var FlagAllowInputAssemblerInputLayout = D3D12_ROOT_SIGNATURE_FLAG_ALLOW_INPUT_ASSEMBLER_INPUT_LAYOUT
    
    static var FlagDenyVertexShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_VERTEX_SHADER_ROOT_ACCESS
    
    static var FlagDenyHullShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_HULL_SHADER_ROOT_ACCESS
    
    static var FlagDenyDomainShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_DOMAIN_SHADER_ROOT_ACCESS
    
    static var FlagDenyGeometryShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_GEOMETRY_SHADER_ROOT_ACCESS
    
    static var FlagDenyPixelShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_PIXEL_SHADER_ROOT_ACCESS
    
    static var FlagAllowStreamOutput = D3D12_ROOT_SIGNATURE_FLAG_ALLOW_STREAM_OUTPUT
    
    static var FlagLocalRootSignature = D3D12_ROOT_SIGNATURE_FLAG_LOCAL_ROOT_SIGNATURE
    
    static var FlagDenyAmplificationShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_AMPLIFICATION_SHADER_ROOT_ACCESS
    
    static var FlagDenyMeshShaderRootAccess = D3D12_ROOT_SIGNATURE_FLAG_DENY_MESH_SHADER_ROOT_ACCESS
    
    static var FlagCbvSrvUavHeapDirectlyIndexed = D3D12_ROOT_SIGNATURE_FLAG_CBV_SRV_UAV_HEAP_DIRECTLY_INDEXED
    
    static var FlagSamplerHeapDirectlyIndexed = D3D12_ROOT_SIGNATURE_FLAG_SAMPLER_HEAP_DIRECTLY_INDEXED
}
