import WinSDK

typealias DxBufferSrvFlags = D3D12_BUFFER_SRV_FLAGS

public extension DxBufferSrvFlags {
    static var FlagNone = D3D12_BUFFER_SRV_FLAG_NONE
    
    static var FlagRaw = D3D12_BUFFER_SRV_FLAG_RAW
}
