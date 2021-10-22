import WinSDK

typealias DxRootParameterType = D3D12_ROOT_PARAMETER_TYPE

public extension DxRootParameterType {
    static var DescriptorTable = D3D12_ROOT_PARAMETER_TYPE_DESCRIPTOR_TABLE
    
    static var Type32bitConstants = D3D12_ROOT_PARAMETER_TYPE_32BIT_CONSTANTS
    
    static var Cbv = D3D12_ROOT_PARAMETER_TYPE_CBV
    
    static var Srv = D3D12_ROOT_PARAMETER_TYPE_SRV
    
    static var Uav = D3D12_ROOT_PARAMETER_TYPE_UAV
}
