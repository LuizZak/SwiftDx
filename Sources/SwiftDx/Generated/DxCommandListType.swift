import WinSDK

typealias DxCommandListType = D3D12_COMMAND_LIST_TYPE

public extension DxCommandListType {
    static var Direct = D3D12_COMMAND_LIST_TYPE_DIRECT
    
    static var Bundle = D3D12_COMMAND_LIST_TYPE_BUNDLE
    
    static var Compute = D3D12_COMMAND_LIST_TYPE_COMPUTE
    
    static var Copy = D3D12_COMMAND_LIST_TYPE_COPY
    
    static var VideoDecode = D3D12_COMMAND_LIST_TYPE_VIDEO_DECODE
    
    static var VideoProcess = D3D12_COMMAND_LIST_TYPE_VIDEO_PROCESS
    
    static var VideoEncode = D3D12_COMMAND_LIST_TYPE_VIDEO_ENCODE
}
