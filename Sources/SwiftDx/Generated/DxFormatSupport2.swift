import WinSDK

typealias DxFormatSupport2 = D3D12_FORMAT_SUPPORT2

public extension DxFormatSupport2 {
    static var None = D3D12_FORMAT_SUPPORT2_NONE
    
    static var UavAtomicAdd = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_ADD
    
    static var UavAtomicBitwiseOps = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_BITWISE_OPS
    
    static var UavAtomicCompareStoreOrCompareExchange = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_COMPARE_STORE_OR_COMPARE_EXCHANGE
    
    static var UavAtomicExchange = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_EXCHANGE
    
    static var UavAtomicSignedMinOrMax = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_SIGNED_MIN_OR_MAX
    
    static var UavAtomicUnsignedMinOrMax = D3D12_FORMAT_SUPPORT2_UAV_ATOMIC_UNSIGNED_MIN_OR_MAX
    
    static var UavTypedLoad = D3D12_FORMAT_SUPPORT2_UAV_TYPED_LOAD
    
    static var UavTypedStore = D3D12_FORMAT_SUPPORT2_UAV_TYPED_STORE
    
    static var OutputMergerLogicOp = D3D12_FORMAT_SUPPORT2_OUTPUT_MERGER_LOGIC_OP
    
    static var Tiled = D3D12_FORMAT_SUPPORT2_TILED
    
    static var MultiplaneOverlay = D3D12_FORMAT_SUPPORT2_MULTIPLANE_OVERLAY
    
    static var SamplerFeedback = D3D12_FORMAT_SUPPORT2_SAMPLER_FEEDBACK
}
