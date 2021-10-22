import WinSDK

typealias DxMemoryPool = D3D12_MEMORY_POOL

public extension DxMemoryPool {
    static var Unknown = D3D12_MEMORY_POOL_UNKNOWN
    
    static var L0 = D3D12_MEMORY_POOL_L0
    
    static var L1 = D3D12_MEMORY_POOL_L1
}
