import WinSDK

typealias DxTextureCopyType = D3D12_TEXTURE_COPY_TYPE

public extension DxTextureCopyType {
    static var SubresourceIndex = D3D12_TEXTURE_COPY_TYPE_SUBRESOURCE_INDEX
    
    static var PlacedFootprint = D3D12_TEXTURE_COPY_TYPE_PLACED_FOOTPRINT
}
