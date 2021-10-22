import WinSDK

typealias DxTextureAddressMode = D3D12_TEXTURE_ADDRESS_MODE

public extension DxTextureAddressMode {
    static var Wrap = D3D12_TEXTURE_ADDRESS_MODE_WRAP
    
    static var Mirror = D3D12_TEXTURE_ADDRESS_MODE_MIRROR
    
    static var Clamp = D3D12_TEXTURE_ADDRESS_MODE_CLAMP
    
    static var Border = D3D12_TEXTURE_ADDRESS_MODE_BORDER
    
    static var MirrorOnce = D3D12_TEXTURE_ADDRESS_MODE_MIRROR_ONCE
}
