import WinSDK

typealias DxDriverMatchingIdentifierStatus = D3D12_DRIVER_MATCHING_IDENTIFIER_STATUS

public extension DxDriverMatchingIdentifierStatus {
    static var CompatibleWithDevice = D3D12_DRIVER_MATCHING_IDENTIFIER_COMPATIBLE_WITH_DEVICE
    
    static var UnsupportedType = D3D12_DRIVER_MATCHING_IDENTIFIER_UNSUPPORTED_TYPE
    
    static var Unrecognized = D3D12_DRIVER_MATCHING_IDENTIFIER_UNRECOGNIZED
    
    static var IncompatibleVersion = D3D12_DRIVER_MATCHING_IDENTIFIER_INCOMPATIBLE_VERSION
    
    static var IncompatibleType = D3D12_DRIVER_MATCHING_IDENTIFIER_INCOMPATIBLE_TYPE
}
