import WinSDK

typealias DxDebugFeature = D3D12_DEBUG_FEATURE

public extension DxDebugFeature {
    static var None = D3D12_DEBUG_FEATURE_NONE
    
    static var AllowBehaviorChangingDebugAids = D3D12_DEBUG_FEATURE_ALLOW_BEHAVIOR_CHANGING_DEBUG_AIDS
    
    static var ConservativeResourceStateTracking = D3D12_DEBUG_FEATURE_CONSERVATIVE_RESOURCE_STATE_TRACKING
    
    static var DisableVirtualizedBundlesValidation = D3D12_DEBUG_FEATURE_DISABLE_VIRTUALIZED_BUNDLES_VALIDATION
    
    static var EmulateWindows7 = D3D12_DEBUG_FEATURE_EMULATE_WINDOWS7
}
