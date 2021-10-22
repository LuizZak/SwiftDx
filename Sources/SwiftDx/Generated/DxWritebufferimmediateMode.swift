import WinSDK

typealias DxWritebufferimmediateMode = D3D12_WRITEBUFFERIMMEDIATE_MODE

public extension DxWritebufferimmediateMode {
    static var Default = D3D12_WRITEBUFFERIMMEDIATE_MODE_DEFAULT
    
    static var MarkerIn = D3D12_WRITEBUFFERIMMEDIATE_MODE_MARKER_IN
    
    static var MarkerOut = D3D12_WRITEBUFFERIMMEDIATE_MODE_MARKER_OUT
}
