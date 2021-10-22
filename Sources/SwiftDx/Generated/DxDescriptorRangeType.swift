import WinSDK

typealias DxDescriptorRangeType = D3D12_DESCRIPTOR_RANGE_TYPE

public extension DxDescriptorRangeType {
    static var Srv = D3D12_DESCRIPTOR_RANGE_TYPE_SRV
    
    static var Uav = D3D12_DESCRIPTOR_RANGE_TYPE_UAV
    
    static var Cbv = D3D12_DESCRIPTOR_RANGE_TYPE_CBV
    
    static var Sampler = D3D12_DESCRIPTOR_RANGE_TYPE_SAMPLER
}
