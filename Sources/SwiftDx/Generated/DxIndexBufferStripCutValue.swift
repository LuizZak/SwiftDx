import WinSDK

typealias DxIndexBufferStripCutValue = D3D12_INDEX_BUFFER_STRIP_CUT_VALUE

public extension DxIndexBufferStripCutValue {
    static var Disabled = D3D12_INDEX_BUFFER_STRIP_CUT_VALUE_DISABLED
    
    static var Value0xffff = D3D12_INDEX_BUFFER_STRIP_CUT_VALUE_0xFFFF
    
    static var Value0xffffffff = D3D12_INDEX_BUFFER_STRIP_CUT_VALUE_0xFFFFFFFF
}
