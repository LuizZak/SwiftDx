import WinSDK

typealias DxLifetimeState = D3D12_LIFETIME_STATE

public extension DxLifetimeState {
    static var InUse = D3D12_LIFETIME_STATE_IN_USE
    
    static var NotInUse = D3D12_LIFETIME_STATE_NOT_IN_USE
}
