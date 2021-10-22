import WinSDK

typealias DxBufferUavFlags = D3D12_BUFFER_UAV_FLAGS

public extension DxBufferUavFlags {
    static var FlagNone = D3D12_BUFFER_UAV_FLAG_NONE
    
    static var FlagRaw = D3D12_BUFFER_UAV_FLAG_RAW
}
