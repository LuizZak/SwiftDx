import WinSDK

typealias DxRaytracingAccelerationStructureType = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE

public extension DxRaytracingAccelerationStructureType {
    static var TopLevel = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL
    
    static var BottomLevel = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL
}
