import WinSDK

typealias DxFormat = DXGI_FORMAT

extension DxFormat {
    /// The format is not known.
    static var unknown: Self { DXGI_FORMAT_UNKNOWN }

    /// A four-component, 128-bit typeless format that supports 32 bits per channel
    /// including alpha.
    static var R32G32B32A32_typeless: Self { DXGI_FORMAT_R32G32B32A32_TYPELESS }

    /// A four-component, 128-bit floating-point format that supports 32 bits per
    /// channel including alpha.
    static var R32G32B32A32_float: Self { DXGI_FORMAT_R32G32B32A32_FLOAT }

    /// A four-component, 128-bit unsigned-integer format that supports 32 bits
    /// per channel including alpha.
    static var R32G32B32A32_uint: Self { DXGI_FORMAT_R32G32B32A32_UINT }

    /// A four-component, 128-bit signed-integer format that supports 32 bits per
    /// channel including alpha.
    static var R32G32B32A32_sint: Self { DXGI_FORMAT_R32G32B32A32_SINT }

    /// A three-component, 96-bit typeless format that supports 32 bits per color
    /// channel.
    static var R32G32B32_typeless: Self { DXGI_FORMAT_R32G32B32_TYPELESS }

    /// A three-component, 96-bit floating-point format that supports 32 bits per
    /// color channel.
    static var R32G32B32_float: Self { DXGI_FORMAT_R32G32B32_FLOAT }

    /// A three-component, 96-bit unsigned-integer format that supports 32 bits
    /// per color channel.
    static var R32G32B32_uint: Self { DXGI_FORMAT_R32G32B32_UINT }

    /// A three-component, 96-bit signed-integer format that supports 32 bits per
    /// color channel.
    static var R32G32B32_sint: Self { DXGI_FORMAT_R32G32B32_SINT }

    /// A four-component, 64-bit typeless format that supports 16 bits per channel
    /// including alpha.
    static var R16G16B16A16_typeless: Self { DXGI_FORMAT_R16G16B16A16_TYPELESS }

    /// A four-component, 64-bit floating-point format that supports 16 bits per
    /// channel including alpha.
    static var R16G16B16A16_float: Self { DXGI_FORMAT_R16G16B16A16_FLOAT }

    /// A four-component, 64-bit unsigned-normalized-integer format that supports
    /// 16 bits per channel including alpha.
    static var R16G16B16A16_unorm: Self { DXGI_FORMAT_R16G16B16A16_UNORM }

    /// A four-component, 64-bit unsigned-integer format that supports 16 bits
    /// per channel including alpha.
    static var R16G16B16A16_uint: Self { DXGI_FORMAT_R16G16B16A16_UINT }

    /// A four-component, 64-bit signed-normalized-integer format that supports
    /// 16 bits per channel including alpha.
    static var R16G16B16A16_snorm: Self { DXGI_FORMAT_R16G16B16A16_SNORM }

    /// A four-component, 64-bit signed-integer format that supports 16 bits per
    /// channel including alpha.
    static var R16G16B16A16_sint: Self { DXGI_FORMAT_R16G16B16A16_SINT }

    /// A two-component, 64-bit typeless format that supports 32 bits for the red
    /// channel and 32 bits for the green channel.
    static var R32G32_typeless: Self { DXGI_FORMAT_R32G32_TYPELESS }

    /// A two-component, 64-bit floating-point format that supports 32 bits for
    /// the red channel and 32 bits for the green channel.
    static var R32G32_float: Self { DXGI_FORMAT_R32G32_FLOAT }

    /// A two-component, 64-bit unsigned-integer format that supports 32 bits for
    /// the red channel and 32 bits for the green channel.
    static var R32G32_uint: Self { DXGI_FORMAT_R32G32_UINT }

    /// A two-component, 64-bit signed-integer format that supports 32 bits for
    /// the red channel and 32 bits for the green channel.
    static var R32G32_sint: Self { DXGI_FORMAT_R32G32_SINT }

    /// A two-component, 64-bit typeless format that supports 32 bits for the red
    /// channel, 8 bits for the green channel, and 24 bits are unused.
    static var R32G8X24_typeless: Self { DXGI_FORMAT_R32G8X24_TYPELESS }

    /// A 32-bit floating-point component, and two unsigned-integer components
    /// (with an additional 32 bits). This format supports 32-bit depth, 8-bit
    /// stencil, and 24 bits are unused.
    static var D32_float_S8X24_uint: Self { DXGI_FORMAT_D32_FLOAT_S8X24_UINT }

    /// A 32-bit floating-point component, and two typeless components (with an
    /// additional 32 bits). This format supports 32-bit red channel, 8 bits are
    /// unused, and 24 bits are unused.
    static var R32_float_X8X24_typeless: Self { DXGI_FORMAT_R32_FLOAT_X8X24_TYPELESS }

    /// A 32-bit typeless component, and two unsigned-integer components (with
    /// an additional 32 bits). This format has 32 bits unused, 8 bits for green
    /// channel, and 24 bits are unused.
    static var X32_typeless_G8X24_uint: Self { DXGI_FORMAT_X32_TYPELESS_G8X24_UINT }

    /// A four-component, 32-bit typeless format that supports 10 bits for each
    /// color and 2 bits for alpha.
    static var R10G10B10A2_typeless: Self { DXGI_FORMAT_R10G10B10A2_TYPELESS }

    /// A four-component, 32-bit unsigned-normalized-integer format that supports
    /// 10 bits for each color and 2 bits for alpha.
    static var R10G10B10A2_unorm: Self { DXGI_FORMAT_R10G10B10A2_UNORM }

    /// A four-component, 32-bit unsigned-integer format that supports 10 bits
    /// for each color and 2 bits for alpha.
    static var R10G10B10A2_uint: Self { DXGI_FORMAT_R10G10B10A2_UINT }

    /// Three partial-precision floating-point numbers encoded into a single 32-bit
    /// value (a variant of s10e5, which is sign bit, 10-bit mantissa, and 5-bit
    /// biased (15) exponent).
    /// There are no sign bits, and there is a 5-bit biased (15) exponent for each
    /// channel, 6-bit mantissa for R and G, and a 5-bit mantissa for B, as shown
    /// in the following illustration.
    ///
    /// Illustration of the bits in the three partial-precision floating-point
    /// numbers
    static var R11G11B10_float: Self { DXGI_FORMAT_R11G11B10_FLOAT }

    /// A four-component, 32-bit typeless format that supports 8 bits per channel
    /// including alpha.
    static var R8G8B8A8_typeless: Self { DXGI_FORMAT_R8G8B8A8_TYPELESS }

    /// A four-component, 32-bit unsigned-normalized-integer format that supports
    /// 8 bits per channel including alpha.
    static var R8G8B8A8_unorm: Self { DXGI_FORMAT_R8G8B8A8_UNORM }

    /// A four-component, 32-bit unsigned-normalized integer sRGB format that supports
    /// 8 bits per channel including alpha.
    static var R8G8B8A8_unorm_srgb: Self { DXGI_FORMAT_R8G8B8A8_UNORM_SRGB }

    /// A four-component, 32-bit unsigned-integer format that supports 8 bits per
    /// channel including alpha.
    static var R8G8B8A8_uint: Self { DXGI_FORMAT_R8G8B8A8_UINT }

    /// A four-component, 32-bit signed-normalized-integer format that supports
    /// 8 bits per channel including alpha.
    static var R8G8B8A8_snorm: Self { DXGI_FORMAT_R8G8B8A8_SNORM }

    /// A four-component, 32-bit signed-integer format that supports 8 bits per
    /// channel including alpha.
    static var R8G8B8A8_sint: Self { DXGI_FORMAT_R8G8B8A8_SINT }

    /// A two-component, 32-bit typeless format that supports 16 bits for the red
    /// channel and 16 bits for the green channel.
    static var R16G16_typeless: Self { DXGI_FORMAT_R16G16_TYPELESS }

    /// A two-component, 32-bit floating-point format that supports 16 bits for
    /// the red channel and 16 bits for the green channel.
    static var R16G16_float: Self { DXGI_FORMAT_R16G16_FLOAT }

    /// A two-component, 32-bit unsigned-normalized-integer format that supports
    /// 16 bits each for the green and red channels.
    static var R16G16_unorm: Self { DXGI_FORMAT_R16G16_UNORM }

    /// A two-component, 32-bit unsigned-integer format that supports 16 bits for
    /// the red channel and 16 bits for the green channel.
    static var R16G16_uint: Self { DXGI_FORMAT_R16G16_UINT }

    /// A two-component, 32-bit signed-normalized-integer format that supports
    /// 16 bits for the red channel and 16 bits for the green channel.
    static var R16G16_snorm: Self { DXGI_FORMAT_R16G16_SNORM }

    /// A two-component, 32-bit signed-integer format that supports 16 bits for
    /// the red channel and 16 bits for the green channel.
    static var R16G16_sint: Self { DXGI_FORMAT_R16G16_SINT }

    /// A single-component, 32-bit typeless format that supports 32 bits for the
    /// red channel.
    static var R32_typeless: Self { DXGI_FORMAT_R32_TYPELESS }

    /// A single-component, 32-bit floating-point format that supports 32 bits
    /// for depth.
    static var D32_float: Self { DXGI_FORMAT_D32_FLOAT }

    /// A single-component, 32-bit floating-point format that supports 32 bits
    /// for the red channel.
    static var R32_float: Self { DXGI_FORMAT_R32_FLOAT }

    /// A single-component, 32-bit unsigned-integer format that supports 32 bits
    /// for the red channel.
    static var R32_uint: Self { DXGI_FORMAT_R32_UINT }

    /// A single-component, 32-bit signed-integer format that supports 32 bits
    /// for the red channel.
    static var R32_sint: Self { DXGI_FORMAT_R32_SINT }

    /// A two-component, 32-bit typeless format that supports 24 bits for the red
    /// channel and 8 bits for the green channel.
    static var R24G8_typeless: Self { DXGI_FORMAT_R24G8_TYPELESS }

    /// A 32-bit z-buffer format that supports 24 bits for depth and 8 bits for
    /// stencil.
    static var D24_unorm_S8_uint: Self { DXGI_FORMAT_D24_UNORM_S8_UINT }

    /// A 32-bit format, that contains a 24 bit, single-component, unsigned-normalized
    /// integer, with an additional typeless 8 bits. This format has 24 bits red
    /// channel and 8 bits unused.
    static var R24_unorm_X8_typeless: Self { DXGI_FORMAT_R24_UNORM_X8_TYPELESS }

    /// A 32-bit format, that contains a 24 bit, single-component, typeless format,
    /// with an additional 8 bit unsigned integer component. This format has 24
    /// bits unused and 8 bits green channel.
    static var X24_typeless_G8_uint: Self { DXGI_FORMAT_X24_TYPELESS_G8_UINT }

    /// A two-component, 16-bit typeless format that supports 8 bits for the red
    /// channel and 8 bits for the green channel.
    static var R8G8_typeless: Self { DXGI_FORMAT_R8G8_TYPELESS }

    /// A two-component, 16-bit unsigned-normalized-integer format that supports
    /// 8 bits for the red channel and 8 bits for the green channel.
    static var R8G8_unorm: Self { DXGI_FORMAT_R8G8_UNORM }

    /// A two-component, 16-bit unsigned-integer format that supports 8 bits for
    /// the red channel and 8 bits for the green channel.
    static var R8G8_uint: Self { DXGI_FORMAT_R8G8_UINT }

    /// A two-component, 16-bit signed-normalized-integer format that supports
    /// 8 bits for the red channel and 8 bits for the green channel.
    static var R8G8_snorm: Self { DXGI_FORMAT_R8G8_SNORM }

    /// A two-component, 16-bit signed-integer format that supports 8 bits for
    /// the red channel and 8 bits for the green channel.
    static var R8G8_sint: Self { DXGI_FORMAT_R8G8_SINT }

    /// A single-component, 16-bit typeless format that supports 16 bits for the
    /// red channel.
    static var R16_typeless: Self { DXGI_FORMAT_R16_TYPELESS }

    /// A single-component, 16-bit floating-point format that supports 16 bits
    /// for the red channel.
    static var R16_float: Self { DXGI_FORMAT_R16_FLOAT }

    /// A single-component, 16-bit unsigned-normalized-integer format that supports
    /// 16 bits for depth.
    static var D16_unorm: Self { DXGI_FORMAT_D16_UNORM }

    /// A single-component, 16-bit unsigned-normalized-integer format that supports
    /// 16 bits for the red channel.
    static var R16_unorm: Self { DXGI_FORMAT_R16_UNORM }

    /// A single-component, 16-bit unsigned-integer format that supports 16 bits
    /// for the red channel.
    static var R16_uint: Self { DXGI_FORMAT_R16_UINT }

    /// A single-component, 16-bit signed-normalized-integer format that supports
    /// 16 bits for the red channel.
    static var R16_snorm: Self { DXGI_FORMAT_R16_SNORM }

    /// A single-component, 16-bit signed-integer format that supports 16 bits
    /// for the red channel.
    static var R16_sint: Self { DXGI_FORMAT_R16_SINT }

    /// A single-component, 8-bit typeless format that supports 8 bits for the
    /// red channel.
    static var R8_typeless: Self { DXGI_FORMAT_R8_TYPELESS }

    /// A single-component, 8-bit unsigned-normalized-integer format that supports
    /// 8 bits for the red channel.
    static var R8_unorm: Self { DXGI_FORMAT_R8_UNORM }

    /// A single-component, 8-bit unsigned-integer format that supports 8 bits
    /// for the red channel.
    static var R8_uint: Self { DXGI_FORMAT_R8_UINT }

    /// A single-component, 8-bit signed-normalized-integer format that supports
    /// 8 bits for the red channel.
    static var R8_snorm: Self { DXGI_FORMAT_R8_SNORM }

    /// A single-component, 8-bit signed-integer format that supports 8 bits for
    /// the red channel.
    static var R8_sint: Self { DXGI_FORMAT_R8_SINT }

    /// A single-component, 8-bit unsigned-normalized-integer format for alpha
    /// only.
    static var A8_unorm: Self { DXGI_FORMAT_A8_UNORM }

    /// A single-component, 1-bit unsigned-normalized integer format that supports
    /// 1 bit for the red channel.
    static var R1_unorm: Self { DXGI_FORMAT_R1_UNORM }

    /// Three partial-precision floating-point numbers encoded into a single 32-bit
    /// value all sharing the same 5-bit exponent (variant of s10e5, which is
    /// sign bit, 10-bit mantissa, and 5-bit biased (15) exponent).
    /// There is no sign bit, and there is a shared 5-bit biased (15) exponent
    /// and a 9-bit mantissa for each channel, as shown in the following illustration.
    ///
    ///
    /// Illustration of the bits in the three partial-precision floating-point
    /// numbers
    static var R9G9B9E5_SHAREDEXP: Self { DXGI_FORMAT_R9G9B9E5_SHAREDEXP }

    /// A four-component, 32-bit unsigned-normalized-integer format. This packed
    /// RGB format is analogous to the UYVY format. Each 32-bit block describes
    /// a pair of pixels: (R8, G8, B8) and (R8, G8, B8) where the R8/B8 values
    /// are repeated, and the G8 values are unique to each pixel.
    ///
    /// Width must be even.
    static var R8G8_B8G8_unorm: Self { DXGI_FORMAT_R8G8_B8G8_UNORM }

    /// A four-component, 32-bit unsigned-normalized-integer format. This packed
    /// RGB format is analogous to the YUY2 format. Each 32-bit block describes
    /// a pair of pixels: (R8, G8, B8) and (R8, G8, B8) where the R8/B8 values
    /// are repeated, and the G8 values are unique to each pixel.
    ///
    /// Width must be even.
    static var G8R8_G8B8_unorm: Self { DXGI_FORMAT_G8R8_G8B8_UNORM }

    /// Four-component typeless block-compression format. For information about
    /// block-compression formats, see Texture Block Compression in Direct3D 11.
    static var BC1_typeless: Self { DXGI_FORMAT_BC1_TYPELESS }

    /// Four-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC1_unorm: Self { DXGI_FORMAT_BC1_UNORM }

    /// Four-component block-compression format for sRGB data. For information
    /// about block-compression formats, see Texture Block Compression in Direct3D
    /// 11.
    static var BC1_unorm_srgb: Self { DXGI_FORMAT_BC1_UNORM_SRGB }

    /// Four-component typeless block-compression format. For information about
    /// block-compression formats, see Texture Block Compression in Direct3D 11.
    static var BC2_typeless: Self { DXGI_FORMAT_BC2_TYPELESS }

    /// Four-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC2_unorm: Self { DXGI_FORMAT_BC2_UNORM }

    /// Four-component block-compression format for sRGB data. For information
    /// about block-compression formats, see Texture Block Compression in Direct3D
    /// 11.
    static var BC2_unorm_srgb: Self { DXGI_FORMAT_BC2_UNORM_SRGB }

    /// Four-component typeless block-compression format. For information about
    /// block-compression formats, see Texture Block Compression in Direct3D 11.
    static var BC3_typeless: Self { DXGI_FORMAT_BC3_TYPELESS }

    /// Four-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC3_unorm: Self { DXGI_FORMAT_BC3_UNORM }

    /// Four-component block-compression format for sRGB data. For information
    /// about block-compression formats, see Texture Block Compression in Direct3D
    /// 11.
    static var BC3_unorm_srgb: Self { DXGI_FORMAT_BC3_UNORM_SRGB }

    /// One-component typeless block-compression format. For information about
    /// block-compression formats, see Texture Block Compression in Direct3D 11.
    static var BC4_typeless: Self { DXGI_FORMAT_BC4_TYPELESS }

    /// One-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC4_unorm: Self { DXGI_FORMAT_BC4_UNORM }

    /// One-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC4_snorm: Self { DXGI_FORMAT_BC4_SNORM }

    /// Two-component typeless block-compression format. For information about
    /// block-compression formats, see Texture Block Compression in Direct3D 11.
    static var BC5_typeless: Self { DXGI_FORMAT_BC5_TYPELESS }

    /// Two-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC5_unorm: Self { DXGI_FORMAT_BC5_UNORM }

    /// Two-component block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC5_snorm: Self { DXGI_FORMAT_BC5_SNORM }

    /// A three-component, 16-bit unsigned-normalized-integer format that supports
    /// 5 bits for blue, 6 bits for green, and 5 bits for red.
    ///
    /// Direct3D 10 through Direct3D 11:  This value is defined for DXGI. However,
    /// Direct3D 10, 10.1, or 11 devices do not support this format.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var B5G6R5_unorm: Self { DXGI_FORMAT_B5G6R5_UNORM }

    /// A four-component, 16-bit unsigned-normalized-integer format that supports
    /// 5 bits for each color channel and 1-bit alpha.
    ///
    /// Direct3D 10 through Direct3D 11:  This value is defined for DXGI. However,
    /// Direct3D 10, 10.1, or 11 devices do not support this format.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var B5G5R5A1_unorm: Self { DXGI_FORMAT_B5G5R5A1_UNORM }

    /// A four-component, 32-bit unsigned-normalized-integer format that supports
    /// 8 bits for each color channel and 8-bit alpha.
    static var B8G8R8A8_unorm: Self { DXGI_FORMAT_B8G8R8A8_UNORM }

    /// A four-component, 32-bit unsigned-normalized-integer format that supports
    /// 8 bits for each color channel and 8 bits unused.
    static var B8G8R8X8_unorm: Self { DXGI_FORMAT_B8G8R8X8_UNORM }

    /// A four-component, 32-bit 2.8-biased fixed-point format that supports 10
    /// bits for each color channel and 2-bit alpha.
    static var R10G10B10_XR_BIAS_A2_unorm: Self { DXGI_FORMAT_R10G10B10_XR_BIAS_A2_UNORM }

    /// A four-component, 32-bit typeless format that supports 8 bits for each
    /// channel including alpha.
    static var B8G8R8A8_typeless: Self { DXGI_FORMAT_B8G8R8A8_TYPELESS }

    /// A four-component, 32-bit unsigned-normalized standard RGB format that supports
    /// 8 bits for each channel including alpha.
    static var B8G8R8A8_unorm_srgb: Self { DXGI_FORMAT_B8G8R8A8_UNORM_SRGB }

    /// A four-component, 32-bit typeless format that supports 8 bits for each
    /// color channel, and 8 bits are unused.
    static var B8G8R8X8_typeless: Self { DXGI_FORMAT_B8G8R8X8_TYPELESS }

    /// A four-component, 32-bit unsigned-normalized standard RGB format that supports
    /// 8 bits for each color channel, and 8 bits are unused.
    static var B8G8R8X8_unorm_srgb: Self { DXGI_FORMAT_B8G8R8X8_UNORM_SRGB }

    /// A typeless block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC6H_typeless: Self { DXGI_FORMAT_BC6H_TYPELESS }

    /// A block-compression format. For information about block-compression formats,
    /// see Texture Block Compression in Direct3D 11.
    static var BC6H_UF16: Self { DXGI_FORMAT_BC6H_UF16 }

    /// A block-compression format. For information about block-compression formats,
    /// see Texture Block Compression in Direct3D 11.
    static var BC6H_SF16: Self { DXGI_FORMAT_BC6H_SF16 }

    /// A typeless block-compression format. For information about block-compression
    /// formats, see Texture Block Compression in Direct3D 11.
    static var BC7_typeless: Self { DXGI_FORMAT_BC7_TYPELESS }

    /// A block-compression format. For information about block-compression formats,
    /// see Texture Block Compression in Direct3D 11.
    static var BC7_unorm: Self { DXGI_FORMAT_BC7_UNORM }

    /// A block-compression format. For information about block-compression formats,
    /// see Texture Block Compression in Direct3D 11.
    static var BC7_unorm_srgb: Self { DXGI_FORMAT_BC7_UNORM_SRGB }

    /// Most common YUV 4:4:4 video resource format. Valid view formats for this
    /// video resource format are DXGI_FORMAT_R8G8B8A8_UNORM and DXGI_FORMAT_R8G8B8A8_UINT.
    /// For UAVs, an additional valid view format is DXGI_FORMAT_R32_UINT. By
    /// using DXGI_FORMAT_R32_UINT for UAVs, you can both read and write as opposed
    /// to just write for DXGI_FORMAT_R8G8B8A8_UNORM and DXGI_FORMAT_R8G8B8A8_UINT.
    /// Supported view types are SRV, RTV, and UAV. One view provides a straightforward
    /// mapping of the entire surface. The mapping to the view channel is V->R8,
    ///
    /// U->G8,
    /// Y->B8,
    /// and A->A8.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var AYUV: Self { DXGI_FORMAT_AYUV }

    /// 10-bit per channel packed YUV 4:4:4 video resource format. Valid view formats
    /// for this video resource format are DXGI_FORMAT_R10G10B10A2_UNORM and DXGI_FORMAT_R10G10B10A2_UINT.
    /// For UAVs, an additional valid view format is DXGI_FORMAT_R32_UINT. By
    /// using DXGI_FORMAT_R32_UINT for UAVs, you can both read and write as opposed
    /// to just write for DXGI_FORMAT_R10G10B10A2_UNORM and DXGI_FORMAT_R10G10B10A2_UINT.
    /// Supported view types are SRV and UAV. One view provides a straightforward
    /// mapping of the entire surface. The mapping to the view channel is U->R10,
    ///
    /// Y->G10,
    /// V->B10,
    /// and A->A2.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var Y410: Self { DXGI_FORMAT_Y410 }

    /// 16-bit per channel packed YUV 4:4:4 video resource format. Valid view formats
    /// for this video resource format are DXGI_FORMAT_R16G16B16A16_UNORM and
    /// DXGI_FORMAT_R16G16B16A16_UINT. Supported view types are SRV and UAV. One
    /// view provides a straightforward mapping of the entire surface. The mapping
    /// to the view channel is U->R16,
    /// Y->G16,
    /// V->B16,
    /// and A->A16.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var Y416: Self { DXGI_FORMAT_Y416 }

    /// Most common YUV 4:2:0 video resource format. Valid luminance data view
    /// formats for this video resource format are DXGI_FORMAT_R8_UNORM and DXGI_FORMAT_R8_UINT.
    /// Valid chrominance data view formats (width and height are each 1/2 of
    /// luminance view) for this video resource format are DXGI_FORMAT_R8G8_UNORM
    /// and DXGI_FORMAT_R8G8_UINT. Supported view types are SRV, RTV, and UAV.
    /// For luminance data view, the mapping to the view channel is Y->R8. For
    /// chrominance data view, the mapping to the view channel is U->R8 and
    /// V->G8.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width and height must be even. Direct3D 11 staging resources and initData
    /// parameters for this format use (rowPitch * (height + (height / 2))) bytes.
    /// The first (SysMemPitch * height) bytes are the Y plane, the remaining
    /// (SysMemPitch * (height / 2)) bytes are the UV plane.
    ///
    /// An app using the YUY 4:2:0 formats must map the luma (Y) plane separately
    /// from the chroma (UV) planes. Developers do this by calling ID3D12Device::CreateShaderResourceView
    /// twice for the same texture and passing in 1-channel and 2-channel formats.
    /// Passing in a 1-channel format compatible with the Y plane maps only the
    /// Y plane. Passing in a 2-channel format compatible with the UV planes (together)
    /// maps only the U and V planes as a single resource view.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var NV12: Self { DXGI_FORMAT_NV12 }

    /// 10-bit per channel planar YUV 4:2:0 video resource format. Valid luminance
    /// data view formats for this video resource format are DXGI_FORMAT_R16_UNORM
    /// and DXGI_FORMAT_R16_UINT. The runtime does not enforce whether the lowest
    /// 6 bits are 0 (given that this video resource format is a 10-bit format
    /// that uses 16 bits). If required, application shader code would have to
    /// enforce this manually. From the runtime's point of view, DXGI_FORMAT_P010
    /// is no different than DXGI_FORMAT_P016. Valid chrominance data view formats
    /// (width and height are each 1/2 of luminance view) for this video resource
    /// format are DXGI_FORMAT_R16G16_UNORM and DXGI_FORMAT_R16G16_UINT. For UAVs,
    /// an additional valid chrominance data view format is DXGI_FORMAT_R32_UINT.
    /// By using DXGI_FORMAT_R32_UINT for UAVs, you can both read and write as
    /// opposed to just write for DXGI_FORMAT_R16G16_UNORM and DXGI_FORMAT_R16G16_UINT.
    /// Supported view types are SRV, RTV, and UAV. For luminance data view, the
    /// mapping to the view channel is Y->R16. For chrominance data view, the
    /// mapping to the view channel is U->R16 and
    /// V->G16.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width and height must be even. Direct3D 11 staging resources and initData
    /// parameters for this format use (rowPitch * (height + (height / 2))) bytes.
    /// The first (SysMemPitch * height) bytes are the Y plane, the remaining
    /// (SysMemPitch * (height / 2)) bytes are the UV plane.
    ///
    /// An app using the YUY 4:2:0 formats must map the luma (Y) plane separately
    /// from the chroma (UV) planes. Developers do this by calling ID3D12Device::CreateShaderResourceView
    /// twice for the same texture and passing in 1-channel and 2-channel formats.
    /// Passing in a 1-channel format compatible with the Y plane maps only the
    /// Y plane. Passing in a 2-channel format compatible with the UV planes (together)
    /// maps only the U and V planes as a single resource view.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var P010: Self { DXGI_FORMAT_P010 }

    /// 16-bit per channel planar YUV 4:2:0 video resource format. Valid luminance
    /// data view formats for this video resource format are DXGI_FORMAT_R16_UNORM
    /// and DXGI_FORMAT_R16_UINT. Valid chrominance data view formats (width and
    /// height are each 1/2 of luminance view) for this video resource format
    /// are DXGI_FORMAT_R16G16_UNORM and DXGI_FORMAT_R16G16_UINT. For UAVs, an
    /// additional valid chrominance data view format is DXGI_FORMAT_R32_UINT.
    /// By using DXGI_FORMAT_R32_UINT for UAVs, you can both read and write as
    /// opposed to just write for DXGI_FORMAT_R16G16_UNORM and DXGI_FORMAT_R16G16_UINT.
    /// Supported view types are SRV, RTV, and UAV. For luminance data view, the
    /// mapping to the view channel is Y->R16. For chrominance data view, the
    /// mapping to the view channel is U->R16 and
    /// V->G16.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width and height must be even. Direct3D 11 staging resources and initData
    /// parameters for this format use (rowPitch * (height + (height / 2))) bytes.
    /// The first (SysMemPitch * height) bytes are the Y plane, the remaining
    /// (SysMemPitch * (height / 2)) bytes are the UV plane.
    ///
    /// An app using the YUY 4:2:0 formats must map the luma (Y) plane separately
    /// from the chroma (UV) planes. Developers do this by calling ID3D12Device::CreateShaderResourceView
    /// twice for the same texture and passing in 1-channel and 2-channel formats.
    /// Passing in a 1-channel format compatible with the Y plane maps only the
    /// Y plane. Passing in a 2-channel format compatible with the UV planes (together)
    /// maps only the U and V planes as a single resource view.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var P016: Self { DXGI_FORMAT_P016 }

    /// 8-bit per channel planar YUV 4:2:0 video resource format. This format is
    /// subsampled where each pixel has its own Y value, but each 2x2 pixel block
    /// shares a single U and V value. The runtime requires that the width and
    /// height of all resources that are created with this format are multiples
    /// of 2. The runtime also requires that the left, right, top, and bottom
    /// members of any RECT that are used for this format are multiples of 2. This
    /// format differs from DXGI_FORMAT_NV12 in that the layout of the data within
    /// the resource is completely opaque to applications. Applications cannot
    /// use the CPU to map the resource and then access the data within the resource.
    /// You cannot use shaders with this format. Because of this behavior, legacy
    /// hardware that supports a non-NV12 4:2:0 layout (for example, YV12, and
    /// so on) can be used. Also, new hardware that has a 4:2:0 implementation
    /// better than NV12 can be used when the application does not need the data
    /// to be in a standard layout.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width and height must be even. Direct3D 11 staging resources and initData
    /// parameters for this format use (rowPitch * (height + (height / 2))) bytes.
    ///
    ///
    /// An app using the YUY 4:2:0 formats must map the luma (Y) plane separately
    /// from the chroma (UV) planes. Developers do this by calling ID3D12Device::CreateShaderResourceView
    /// twice for the same texture and passing in 1-channel and 2-channel formats.
    /// Passing in a 1-channel format compatible with the Y plane maps only the
    /// Y plane. Passing in a 2-channel format compatible with the UV planes (together)
    /// maps only the U and V planes as a single resource view.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var format_420_OPAQUE: Self { DXGI_FORMAT_420_OPAQUE }

    /// Most common YUV 4:2:2 video resource format. Valid view formats for this
    /// video resource format are DXGI_FORMAT_R8G8B8A8_UNORM and DXGI_FORMAT_R8G8B8A8_UINT.
    /// For UAVs, an additional valid view format is DXGI_FORMAT_R32_UINT. By
    /// using DXGI_FORMAT_R32_UINT for UAVs, you can both read and write as opposed
    /// to just write for DXGI_FORMAT_R8G8B8A8_UNORM and DXGI_FORMAT_R8G8B8A8_UINT.
    /// Supported view types are SRV and UAV. One view provides a straightforward
    /// mapping of the entire surface. The mapping to the view channel is Y0->R8,
    ///
    /// U0->G8,
    /// Y1->B8,
    /// and V0->A8.
    ///
    /// A unique valid view format for this video resource format is DXGI_FORMAT_R8G8_B8G8_UNORM.
    /// With this view format, the width of the view appears to be twice what
    /// the DXGI_FORMAT_R8G8B8A8_UNORM or DXGI_FORMAT_R8G8B8A8_UINT view would
    /// be when hardware reconstructs RGBA automatically on read and before filtering.
    /// This Direct3D hardware behavior is legacy and is likely not useful any
    /// more. With this view format, the mapping to the view channel is Y0->R8,
    ///
    /// U0->
    /// G8[0],
    /// Y1->B8,
    /// and V0->
    /// G8[1].
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width must be even.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var YUY2: Self { DXGI_FORMAT_YUY2 }

    /// 10-bit per channel packed YUV 4:2:2 video resource format. Valid view formats
    /// for this video resource format are DXGI_FORMAT_R16G16B16A16_UNORM and
    /// DXGI_FORMAT_R16G16B16A16_UINT. The runtime does not enforce whether the
    /// lowest 6 bits are 0 (given that this video resource format is a 10-bit
    /// format that uses 16 bits). If required, application shader code would
    /// have to enforce this manually. From the runtime's point of view, DXGI_FORMAT_Y210
    /// is no different than DXGI_FORMAT_Y216. Supported view types are SRV and
    /// UAV. One view provides a straightforward mapping of the entire surface.
    /// The mapping to the view channel is Y0->R16,
    /// U->G16,
    /// Y1->B16,
    /// and V->A16.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width must be even.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var Y210: Self { DXGI_FORMAT_Y210 }

    /// 16-bit per channel packed YUV 4:2:2 video resource format. Valid view formats
    /// for this video resource format are DXGI_FORMAT_R16G16B16A16_UNORM and
    /// DXGI_FORMAT_R16G16B16A16_UINT. Supported view types are SRV and UAV. One
    /// view provides a straightforward mapping of the entire surface. The mapping
    /// to the view channel is Y0->R16,
    /// U->G16,
    /// Y1->B16,
    /// and V->A16.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width must be even.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var Y216: Self { DXGI_FORMAT_Y216 }

    /// Most common planar YUV 4:1:1 video resource format. Valid luminance data
    /// view formats for this video resource format are DXGI_FORMAT_R8_UNORM and
    /// DXGI_FORMAT_R8_UINT. Valid chrominance data view formats (width and height
    /// are each 1/4 of luminance view) for this video resource format are DXGI_FORMAT_R8G8_UNORM
    /// and DXGI_FORMAT_R8G8_UINT. Supported view types are SRV, RTV, and UAV.
    /// For luminance data view, the mapping to the view channel is Y->R8. For
    /// chrominance data view, the mapping to the view channel is U->R8 and
    /// V->G8.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Width must be a multiple of 4. Direct3D11 staging resources and initData
    /// parameters for this format use (rowPitch * height * 2) bytes. The first
    /// (SysMemPitch * height) bytes are the Y plane, the next ((SysMemPitch /
    /// 2) * height) bytes are the UV plane, and the remainder is padding.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var NV11: Self { DXGI_FORMAT_NV11 }

    /// 4-bit palletized YUV format that is commonly used for DVD subpicture.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var AI44: Self { DXGI_FORMAT_AI44 }

    /// 4-bit palletized YUV format that is commonly used for DVD subpicture.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var IA44: Self { DXGI_FORMAT_IA44 }

    /// 8-bit palletized format that is used for palletized RGB data when the processor
    /// processes ISDB-T data and for palletized YUV data when the processor processes
    /// BluRay data.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var P8: Self { DXGI_FORMAT_P8 }

    /// 8-bit palletized format with 8 bits of alpha that is used for palletized
    /// YUV data when the processor processes BluRay data.
    ///
    /// For more info about YUV formats for video rendering, see Recommended 8-Bit
    /// YUV Formats for Video Rendering.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var A8P8: Self { DXGI_FORMAT_A8P8 }

    /// A four-component, 16-bit unsigned-normalized integer format that supports
    /// 4 bits for each channel including alpha.
    ///
    /// Direct3D 11.1:  This value is not supported until Windows 8.
    static var B4G4R4A4_unorm: Self { DXGI_FORMAT_B4G4R4A4_UNORM }

    /// A video format; an 8-bit version of a hybrid planar 4:2:2 format.
    static var P208: Self { DXGI_FORMAT_P208 }

    /// An 8 bit YCbCrA 4:4 rendering format.
    static var V208: Self { DXGI_FORMAT_V208 }

    /// An 8 bit YCbCrA 4:4:4:4 rendering format.
    static var V408: Self { DXGI_FORMAT_V408 }

    /// Forces this enumeration to compile to 32 bits in size. Without this value,
    /// some compilers would allow this enumeration to compile to a
    /// size other than 32 bits. This value is not used.
    static var force_uint: Self { DXGI_FORMAT_FORCE_UINT }

}
