import WinSDK

typealias DxStateObjectFlags = D3D12_STATE_OBJECT_FLAGS

public extension DxStateObjectFlags {
    static var FlagNone = D3D12_STATE_OBJECT_FLAG_NONE
    
    static var FlagAllowLocalDependenciesOnExternalDefinitions = D3D12_STATE_OBJECT_FLAG_ALLOW_LOCAL_DEPENDENCIES_ON_EXTERNAL_DEFINITIONS
    
    static var FlagAllowExternalDependenciesOnLocalDefinitions = D3D12_STATE_OBJECT_FLAG_ALLOW_EXTERNAL_DEPENDENCIES_ON_LOCAL_DEFINITIONS
    
    static var FlagAllowStateObjectAdditions = D3D12_STATE_OBJECT_FLAG_ALLOW_STATE_OBJECT_ADDITIONS
}
