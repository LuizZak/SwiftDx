import WinSDK

typealias DxMessageCallbackFlags = D3D12_MESSAGE_CALLBACK_FLAGS

public extension DxMessageCallbackFlags {
    static var FlagNone = D3D12_MESSAGE_CALLBACK_FLAG_NONE
    
    static var IgnoreFilters = D3D12_MESSAGE_CALLBACK_IGNORE_FILTERS
}
