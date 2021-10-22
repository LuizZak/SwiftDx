import WinSDK

typealias DxFeature = D3D12_FEATURE

public extension DxFeature {
    static var Options = D3D12_FEATURE_D3D12_OPTIONS
    
    static var Architecture = D3D12_FEATURE_ARCHITECTURE
    
    static var FeatureLevels = D3D12_FEATURE_FEATURE_LEVELS
    
    static var FormatSupport = D3D12_FEATURE_FORMAT_SUPPORT
    
    static var MultisampleQualityLevels = D3D12_FEATURE_MULTISAMPLE_QUALITY_LEVELS
    
    static var FormatInfo = D3D12_FEATURE_FORMAT_INFO
    
    static var GpuVirtualAddressSupport = D3D12_FEATURE_GPU_VIRTUAL_ADDRESS_SUPPORT
    
    static var ShaderModel = D3D12_FEATURE_SHADER_MODEL
    
    static var Options1 = D3D12_FEATURE_D3D12_OPTIONS1
    
    static var ProtectedResourceSessionSupport = D3D12_FEATURE_PROTECTED_RESOURCE_SESSION_SUPPORT
    
    static var RootSignature = D3D12_FEATURE_ROOT_SIGNATURE
    
    static var Architecture1 = D3D12_FEATURE_ARCHITECTURE1
    
    static var Options2 = D3D12_FEATURE_D3D12_OPTIONS2
    
    static var ShaderCache = D3D12_FEATURE_SHADER_CACHE
    
    static var CommandQueuePriority = D3D12_FEATURE_COMMAND_QUEUE_PRIORITY
    
    static var Options3 = D3D12_FEATURE_D3D12_OPTIONS3
    
    static var ExistingHeaps = D3D12_FEATURE_EXISTING_HEAPS
    
    static var Options4 = D3D12_FEATURE_D3D12_OPTIONS4
    
    static var Serialization = D3D12_FEATURE_SERIALIZATION
    
    static var CrossNode = D3D12_FEATURE_CROSS_NODE
    
    static var Options5 = D3D12_FEATURE_D3D12_OPTIONS5
    
    static var Options6 = D3D12_FEATURE_D3D12_OPTIONS6
    
    static var QueryMetaCommand = D3D12_FEATURE_QUERY_META_COMMAND
    
    static var Options7 = D3D12_FEATURE_D3D12_OPTIONS7
    
    static var ProtectedResourceSessionTypeCount = D3D12_FEATURE_PROTECTED_RESOURCE_SESSION_TYPE_COUNT
    
    static var ProtectedResourceSessionTypes = D3D12_FEATURE_PROTECTED_RESOURCE_SESSION_TYPES
    
    static var Options8 = D3D12_FEATURE_D3D12_OPTIONS8
    
    static var Options9 = D3D12_FEATURE_D3D12_OPTIONS9
    
    static var WaveMma = D3D12_FEATURE_WAVE_MMA
}
