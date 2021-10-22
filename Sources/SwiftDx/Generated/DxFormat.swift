import WinSDK

typealias DxFormat = DXGI_FORMAT

public extension DxFormat {
    static var Unknown = DXGI_FORMAT_UNKNOWN
    
    static var R32g32b32a32Typeless = DXGI_FORMAT_R32G32B32A32_TYPELESS
    
    static var R32g32b32a32Float = DXGI_FORMAT_R32G32B32A32_FLOAT
    
    static var R32g32b32a32Uint = DXGI_FORMAT_R32G32B32A32_UINT
    
    static var R32g32b32a32Sint = DXGI_FORMAT_R32G32B32A32_SINT
    
    static var R32g32b32Typeless = DXGI_FORMAT_R32G32B32_TYPELESS
    
    static var R32g32b32Float = DXGI_FORMAT_R32G32B32_FLOAT
    
    static var R32g32b32Uint = DXGI_FORMAT_R32G32B32_UINT
    
    static var R32g32b32Sint = DXGI_FORMAT_R32G32B32_SINT
    
    static var R16g16b16a16Typeless = DXGI_FORMAT_R16G16B16A16_TYPELESS
    
    static var R16g16b16a16Float = DXGI_FORMAT_R16G16B16A16_FLOAT
    
    static var R16g16b16a16Unorm = DXGI_FORMAT_R16G16B16A16_UNORM
    
    static var R16g16b16a16Uint = DXGI_FORMAT_R16G16B16A16_UINT
    
    static var R16g16b16a16Snorm = DXGI_FORMAT_R16G16B16A16_SNORM
    
    static var R16g16b16a16Sint = DXGI_FORMAT_R16G16B16A16_SINT
    
    static var R32g32Typeless = DXGI_FORMAT_R32G32_TYPELESS
    
    static var R32g32Float = DXGI_FORMAT_R32G32_FLOAT
    
    static var R32g32Uint = DXGI_FORMAT_R32G32_UINT
    
    static var R32g32Sint = DXGI_FORMAT_R32G32_SINT
    
    static var R32g8x24Typeless = DXGI_FORMAT_R32G8X24_TYPELESS
    
    static var D32FloatS8x24Uint = DXGI_FORMAT_D32_FLOAT_S8X24_UINT
    
    static var R32FloatX8x24Typeless = DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS
    
    static var X32TypelessG8x24Uint = DXGI_FORMAT_X32_TYPELESS_G8X24_UINT
    
    static var R10g10b10a2Typeless = DXGI_FORMAT_R10G10B10A2_TYPELESS
    
    static var R10g10b10a2Unorm = DXGI_FORMAT_R10G10B10A2_UNORM
    
    static var R10g10b10a2Uint = DXGI_FORMAT_R10G10B10A2_UINT
    
    static var R11g11b10Float = DXGI_FORMAT_R11G11B10_FLOAT
    
    static var R8g8b8a8Typeless = DXGI_FORMAT_R8G8B8A8_TYPELESS
    
    static var R8g8b8a8Unorm = DXGI_FORMAT_R8G8B8A8_UNORM
    
    static var R8g8b8a8UnormSrgb = DXGI_FORMAT_R8G8B8A8_UNORM_SRGB
    
    static var R8g8b8a8Uint = DXGI_FORMAT_R8G8B8A8_UINT
    
    static var R8g8b8a8Snorm = DXGI_FORMAT_R8G8B8A8_SNORM
    
    static var R8g8b8a8Sint = DXGI_FORMAT_R8G8B8A8_SINT
    
    static var R16g16Typeless = DXGI_FORMAT_R16G16_TYPELESS
    
    static var R16g16Float = DXGI_FORMAT_R16G16_FLOAT
    
    static var R16g16Unorm = DXGI_FORMAT_R16G16_UNORM
    
    static var R16g16Uint = DXGI_FORMAT_R16G16_UINT
    
    static var R16g16Snorm = DXGI_FORMAT_R16G16_SNORM
    
    static var R16g16Sint = DXGI_FORMAT_R16G16_SINT
    
    static var R32Typeless = DXGI_FORMAT_R32_TYPELESS
    
    static var D32Float = DXGI_FORMAT_D32_FLOAT
    
    static var R32Float = DXGI_FORMAT_R32_FLOAT
    
    static var R32Uint = DXGI_FORMAT_R32_UINT
    
    static var R32Sint = DXGI_FORMAT_R32_SINT
    
    static var R24g8Typeless = DXGI_FORMAT_R24G8_TYPELESS
    
    static var D24UnormS8Uint = DXGI_FORMAT_D24_UNORM_S8_UINT
    
    static var R24UnormX8Typeless = DXGI_FORMAT_R24_UNORM_X8_TYPELESS
    
    static var X24TypelessG8Uint = DXGI_FORMAT_X24_TYPELESS_G8_UINT
    
    static var R8g8Typeless = DXGI_FORMAT_R8G8_TYPELESS
    
    static var R8g8Unorm = DXGI_FORMAT_R8G8_UNORM
    
    static var R8g8Uint = DXGI_FORMAT_R8G8_UINT
    
    static var R8g8Snorm = DXGI_FORMAT_R8G8_SNORM
    
    static var R8g8Sint = DXGI_FORMAT_R8G8_SINT
    
    static var R16Typeless = DXGI_FORMAT_R16_TYPELESS
    
    static var R16Float = DXGI_FORMAT_R16_FLOAT
    
    static var D16Unorm = DXGI_FORMAT_D16_UNORM
    
    static var R16Unorm = DXGI_FORMAT_R16_UNORM
    
    static var R16Uint = DXGI_FORMAT_R16_UINT
    
    static var R16Snorm = DXGI_FORMAT_R16_SNORM
    
    static var R16Sint = DXGI_FORMAT_R16_SINT
    
    static var R8Typeless = DXGI_FORMAT_R8_TYPELESS
    
    static var R8Unorm = DXGI_FORMAT_R8_UNORM
    
    static var R8Uint = DXGI_FORMAT_R8_UINT
    
    static var R8Snorm = DXGI_FORMAT_R8_SNORM
    
    static var R8Sint = DXGI_FORMAT_R8_SINT
    
    static var A8Unorm = DXGI_FORMAT_A8_UNORM
    
    static var R1Unorm = DXGI_FORMAT_R1_UNORM
    
    static var R9g9b9e5Sharedexp = DXGI_FORMAT_R9G9B9E5_SHAREDEXP
    
    static var R8g8B8g8Unorm = DXGI_FORMAT_R8G8_B8G8_UNORM
    
    static var G8r8G8b8Unorm = DXGI_FORMAT_G8R8_G8B8_UNORM
    
    static var Bc1Typeless = DXGI_FORMAT_BC1_TYPELESS
    
    static var Bc1Unorm = DXGI_FORMAT_BC1_UNORM
    
    static var Bc1UnormSrgb = DXGI_FORMAT_BC1_UNORM_SRGB
    
    static var Bc2Typeless = DXGI_FORMAT_BC2_TYPELESS
    
    static var Bc2Unorm = DXGI_FORMAT_BC2_UNORM
    
    static var Bc2UnormSrgb = DXGI_FORMAT_BC2_UNORM_SRGB
    
    static var Bc3Typeless = DXGI_FORMAT_BC3_TYPELESS
    
    static var Bc3Unorm = DXGI_FORMAT_BC3_UNORM
    
    static var Bc3UnormSrgb = DXGI_FORMAT_BC3_UNORM_SRGB
    
    static var Bc4Typeless = DXGI_FORMAT_BC4_TYPELESS
    
    static var Bc4Unorm = DXGI_FORMAT_BC4_UNORM
    
    static var Bc4Snorm = DXGI_FORMAT_BC4_SNORM
    
    static var Bc5Typeless = DXGI_FORMAT_BC5_TYPELESS
    
    static var Bc5Unorm = DXGI_FORMAT_BC5_UNORM
    
    static var Bc5Snorm = DXGI_FORMAT_BC5_SNORM
    
    static var B5g6r5Unorm = DXGI_FORMAT_B5G6R5_UNORM
    
    static var B5g5r5a1Unorm = DXGI_FORMAT_B5G5R5A1_UNORM
    
    static var B8g8r8a8Unorm = DXGI_FORMAT_B8G8R8A8_UNORM
    
    static var B8g8r8x8Unorm = DXGI_FORMAT_B8G8R8X8_UNORM
    
    static var R10g10b10XrBiasA2Unorm = DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM
    
    static var B8g8r8a8Typeless = DXGI_FORMAT_B8G8R8A8_TYPELESS
    
    static var B8g8r8a8UnormSrgb = DXGI_FORMAT_B8G8R8A8_UNORM_SRGB
    
    static var B8g8r8x8Typeless = DXGI_FORMAT_B8G8R8X8_TYPELESS
    
    static var B8g8r8x8UnormSrgb = DXGI_FORMAT_B8G8R8X8_UNORM_SRGB
    
    static var Bc6hTypeless = DXGI_FORMAT_BC6H_TYPELESS
    
    static var Bc6hUf16 = DXGI_FORMAT_BC6H_UF16
    
    static var Bc6hSf16 = DXGI_FORMAT_BC6H_SF16
    
    static var Bc7Typeless = DXGI_FORMAT_BC7_TYPELESS
    
    static var Bc7Unorm = DXGI_FORMAT_BC7_UNORM
    
    static var Bc7UnormSrgb = DXGI_FORMAT_BC7_UNORM_SRGB
    
    static var Ayuv = DXGI_FORMAT_AYUV
    
    static var Y410 = DXGI_FORMAT_Y410
    
    static var Y416 = DXGI_FORMAT_Y416
    
    static var Nv12 = DXGI_FORMAT_NV12
    
    static var P010 = DXGI_FORMAT_P010
    
    static var P016 = DXGI_FORMAT_P016
    
    static var Format420Opaque = DXGI_FORMAT_420_OPAQUE
    
    static var Yuy2 = DXGI_FORMAT_YUY2
    
    static var Y210 = DXGI_FORMAT_Y210
    
    static var Y216 = DXGI_FORMAT_Y216
    
    static var Nv11 = DXGI_FORMAT_NV11
    
    static var Ai44 = DXGI_FORMAT_AI44
    
    static var Ia44 = DXGI_FORMAT_IA44
    
    static var P8 = DXGI_FORMAT_P8
    
    static var A8p8 = DXGI_FORMAT_A8P8
    
    static var B4g4r4a4Unorm = DXGI_FORMAT_B4G4R4A4_UNORM
    
    static var P208 = DXGI_FORMAT_P208
    
    static var V208 = DXGI_FORMAT_V208
    
    static var V408 = DXGI_FORMAT_V408
    
    static var SamplerFeedbackMinMipOpaque = DXGI_FORMAT_SAMPLER_FEEDBACK_MIN_MIP_OPAQUE
    
    static var SamplerFeedbackMipRegionUsedOpaque = DXGI_FORMAT_SAMPLER_FEEDBACK_MIP_REGION_USED_OPAQUE
    
    static var ForceUint = DXGI_FORMAT_FORCE_UINT
}
