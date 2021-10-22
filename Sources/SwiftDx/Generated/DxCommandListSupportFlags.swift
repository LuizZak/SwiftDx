import WinSDK

typealias DxCommandListSupportFlags = D3D12_COMMAND_LIST_SUPPORT_FLAGS

public extension DxCommandListSupportFlags {
    static var FlagNone = D3D12_COMMAND_LIST_SUPPORT_FLAG_NONE
    
    static var FlagDirect = D3D12_COMMAND_LIST_SUPPORT_FLAG_DIRECT
    
    static var FlagBundle = D3D12_COMMAND_LIST_SUPPORT_FLAG_BUNDLE
    
    static var FlagCompute = D3D12_COMMAND_LIST_SUPPORT_FLAG_COMPUTE
    
    static var FlagCopy = D3D12_COMMAND_LIST_SUPPORT_FLAG_COPY
    
    static var FlagVideoDecode = D3D12_COMMAND_LIST_SUPPORT_FLAG_VIDEO_DECODE
    
    static var FlagVideoProcess = D3D12_COMMAND_LIST_SUPPORT_FLAG_VIDEO_PROCESS
    
    static var FlagVideoEncode = D3D12_COMMAND_LIST_SUPPORT_FLAG_VIDEO_ENCODE
}
