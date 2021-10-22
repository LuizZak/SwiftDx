import WinSDK

typealias DxViewInstancingFlags = D3D12_VIEW_INSTANCING_FLAGS

public extension DxViewInstancingFlags {
    static var FlagNone = D3D12_VIEW_INSTANCING_FLAG_NONE
    
    static var FlagEnableViewInstanceMasking = D3D12_VIEW_INSTANCING_FLAG_ENABLE_VIEW_INSTANCE_MASKING
}
