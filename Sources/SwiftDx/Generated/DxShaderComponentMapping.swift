import WinSDK

typealias DxShaderComponentMapping = D3D12_SHADER_COMPONENT_MAPPING

public extension DxShaderComponentMapping {
    static var FromMemoryComponent0 = D3D12_SHADER_COMPONENT_MAPPING_FROM_MEMORY_COMPONENT_0
    
    static var FromMemoryComponent1 = D3D12_SHADER_COMPONENT_MAPPING_FROM_MEMORY_COMPONENT_1
    
    static var FromMemoryComponent2 = D3D12_SHADER_COMPONENT_MAPPING_FROM_MEMORY_COMPONENT_2
    
    static var FromMemoryComponent3 = D3D12_SHADER_COMPONENT_MAPPING_FROM_MEMORY_COMPONENT_3
    
    static var ForceValue0 = D3D12_SHADER_COMPONENT_MAPPING_FORCE_VALUE_0
    
    static var ForceValue1 = D3D12_SHADER_COMPONENT_MAPPING_FORCE_VALUE_1
}
