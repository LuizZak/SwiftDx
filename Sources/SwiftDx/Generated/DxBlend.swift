import WinSDK

typealias DxBlend = D3D12_BLEND

public extension DxBlend {
    static var Zero = D3D12_BLEND_ZERO
    
    static var One = D3D12_BLEND_ONE
    
    static var SrcColor = D3D12_BLEND_SRC_COLOR
    
    static var InvSrcColor = D3D12_BLEND_INV_SRC_COLOR
    
    static var SrcAlpha = D3D12_BLEND_SRC_ALPHA
    
    static var InvSrcAlpha = D3D12_BLEND_INV_SRC_ALPHA
    
    static var DestAlpha = D3D12_BLEND_DEST_ALPHA
    
    static var InvDestAlpha = D3D12_BLEND_INV_DEST_ALPHA
    
    static var DestColor = D3D12_BLEND_DEST_COLOR
    
    static var InvDestColor = D3D12_BLEND_INV_DEST_COLOR
    
    static var SrcAlphaSat = D3D12_BLEND_SRC_ALPHA_SAT
    
    static var BlendFactor = D3D12_BLEND_BLEND_FACTOR
    
    static var InvBlendFactor = D3D12_BLEND_INV_BLEND_FACTOR
    
    static var Src1Color = D3D12_BLEND_SRC1_COLOR
    
    static var InvSrc1Color = D3D12_BLEND_INV_SRC1_COLOR
    
    static var Src1Alpha = D3D12_BLEND_SRC1_ALPHA
    
    static var InvSrc1Alpha = D3D12_BLEND_INV_SRC1_ALPHA
}
