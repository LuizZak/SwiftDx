import Foundation
import WinSDK
import SwiftCOM

let D3DCOMPILE_OPTIMIZATION_LEVEL2: Int32 = (1 << 14) | (1 << 15)

class DirectXShader {
    private let filePath: URL

    public var inputs: [D3D12_INPUT_ELEMENT_DESC] = []

    /// Initializes a shader from a .hlsl file located on disk.
    init(filePath: URL) {
        self.filePath = filePath
    }

    func addInput(_ input: D3D12_INPUT_ELEMENT_DESC) {
        inputs.append(input)
    }

    func addInput(
        name: String,
        index: UINT,
        format: DxgiFormat,
        slot: UINT,
        alignedByteOffset: UINT,
        classification: DxInputClassification
    ) {

        var input = D3D12_INPUT_ELEMENT_DESC()

        name.withCString {
            input.SemanticName = $0
            input.SemanticIndex = index
            input.Format = format
            input.InputSlot = slot
            input.InputSlotClass = classification
        }

        addInput(input)
    }

    /// Compiles a shader with a given type and entry point that is referenced by
    /// this shader's file path.
    func compile(target: ShaderTarget, entryPoint: String, compileFlags: Flags = []) throws -> DirectXCompiledShader {
        let result = try D3DCompileFromFile(
            filePath.path,
            [],
            nil,
            entryPoint,
            target.targetName,
            compileFlags.rawValue,
            0
        )

        guard case let (result?, errorBlob) = result else {
            throw Error.compilerReturnedNil
        }

        let errorMessage: String?
        if let errorBuffer = try errorBlob?.GetBufferPointer() {
            let charPtr = errorBuffer.assumingMemoryBound(to: CHAR.self)

            errorMessage = String(cString: charPtr)
        } else {
            errorMessage = nil
        }

        return DirectXCompiledShader(shader: result, errorMessage: errorMessage)
    }

    enum Error: Swift.Error {
        case compilerReturnedNil
    }

    /// Specify how the compiler compiles the HLSL code.
    ///
    /// Win32 API reference: https://docs.microsoft.com/en-us/windows/win32/direct3dhlsl/d3dcompile-constants
    struct Flags: OptionSet {
        var rawValue: UINT

        /// Insert debug file/line/type/symbol information.
        static let debug = Self(rawValue: UINT(D3DCOMPILE_DEBUG))

        /// Do not validate the generated code against known capabilities and
        /// constraints. This option is only recommended when compiling shaders
        /// you KNOW will work. (ie. have compiled before without this option.)
        /// Shaders are always validated by D3D before they are set to the device.
        static let skipValidation = Self(rawValue: UINT(D3DCOMPILE_SKIP_VALIDATION))

        /// Instructs the compiler to skip optimization steps during code generation.
        /// Unless you are trying to isolate a problem in your code using this option
        /// is not recommended.
        static let skipOptimization = Self(rawValue: UINT(D3DCOMPILE_SKIP_OPTIMIZATION))

        /// Unless explicitly specified, matrices will be packed in row-major order
        /// on input and output from the shader.
        static let packMatrixRowMajor = Self(rawValue: UINT(D3DCOMPILE_PACK_MATRIX_ROW_MAJOR))

        /// Unless explicitly specified, matrices will be packed in column-major
        /// order on input and output from the shader.  This is generally more
        /// efficient, since it allows vector-matrix multiplication to be performed
        /// using a series of dot-products.
        static let packMatrixColumnMajor = Self(rawValue: UINT(D3DCOMPILE_PACK_MATRIX_COLUMN_MAJOR))

        /// Force all computations in resulting shader to occur at partial precision.
        /// This may result in faster evaluation of shaders on some hardware.
        static let partialPrecision = Self(rawValue: UINT(D3DCOMPILE_PARTIAL_PRECISION))

        /// Force compiler to compile against the next highest available software
        /// target for vertex shaders. This flag also turns optimizations off,
        /// and debugging on.
        static let forceVsSoftwareNoOpt = Self(rawValue: UINT(D3DCOMPILE_FORCE_VS_SOFTWARE_NO_OPT))

        /// Force compiler to compile against the next highest available software
        /// target for pixel shaders. This flag also turns optimizations off,
        /// and debugging on.
        static let forcePsSoftwareNoOpt = Self(rawValue: UINT(D3DCOMPILE_FORCE_PS_SOFTWARE_NO_OPT))

        /// Disables Pre-shaders. Using this flag will cause the compiler to not
        /// pull out static expression for evaluation on the host cpu
        static let noPreshader = Self(rawValue: UINT(D3DCOMPILE_NO_PRESHADER))

        /// Hint compiler to avoid flow-control constructs where possible.
        static let avoidFlowControl = Self(rawValue: UINT(D3DCOMPILE_AVOID_FLOW_CONTROL))

        /// Hint compiler to prefer flow-control constructs where possible.
        static let preferFlowControl = Self(rawValue: UINT(D3DCOMPILE_PREFER_FLOW_CONTROL))

        /// By default, the HLSL/Effect compilers are not strict on deprecated syntax.
        /// Specifying this flag enables the strict mode. Deprecated syntax may be
        /// removed in a future release, and enabling syntax is a good way to make
        /// sure your shaders comply to the latest spec.
        static let enableStrictness = Self(rawValue: UINT(D3DCOMPILE_ENABLE_STRICTNESS))

        /// This enables older shaders to compile to 4_0 targets.
        static let enableBackwardsCompatibility = Self(rawValue: UINT(D3DCOMPILE_ENABLE_BACKWARDS_COMPATIBILITY))

        /// Forces the IEEE strict compile.
        static let ieeeStrictness = Self(rawValue: UINT(D3DCOMPILE_IEEE_STRICTNESS))

        /// Directs the compiler to use the lowest optimization level. If you set
        /// this constant, the compiler might produce slower code but produces
        /// the code more quickly. Set this constant when you develop the shader
        /// iteratively
        static let optimizationLevel0 = Self(rawValue: UINT(D3DCOMPILE_OPTIMIZATION_LEVEL0))

        /// Directs the compiler to use the second lowest optimization level.
        static let optimizationLevel1 = Self(rawValue: UINT(D3DCOMPILE_OPTIMIZATION_LEVEL1))

        /// Directs the compiler to use the second highest optimization level.
        static let optimizationLevel2 = Self(rawValue: UINT(D3DCOMPILE_OPTIMIZATION_LEVEL2))

        /// Directs the compiler to use the highest optimization level. If you
        /// set this constant, the compiler produces the best possible code but
        /// might take significantly longer to do so. Set this constant for final
        /// builds of an application when performance is the most important factor.
        static let optimizationLevel3 = Self(rawValue: UINT(D3DCOMPILE_OPTIMIZATION_LEVEL3))

        /// Directs the compiler to treat all warnings as errors when it compiles
        /// the shader code. We recommend that you use this constant for new shader
        /// code, so that you can resolve all warnings and lower the number of
        /// hard-to-find code defects.
        static let warningsAreErrors = Self(rawValue: UINT(D3DCOMPILE_WARNINGS_ARE_ERRORS))

        /// Directs the compiler to assume that unordered access views (UAVs)
        /// and shader resource views (SRVs) may alias for cs_5_0.
        static let resourcesMayAlias = Self(rawValue: UINT(D3DCOMPILE_RESOURCES_MAY_ALIAS))

        /// Directs the compiler to enable unbounded descriptor tables.
        static let enableUnboundedDescriptorTables = Self(rawValue: UINT(D3DCOMPILE_ENABLE_UNBOUNDED_DESCRIPTOR_TABLES))

        /// Directs the compiler to ensure all resources are bound.
        static let allResourcesBound = Self(rawValue: UINT(D3DCOMPILE_ALL_RESOURCES_BOUND))

        /// This enables a debug name to be generated based on source information.
        /// It requires `Flags.debug` to be set, and is exclusive with
        /// `Flags.debugNameForBinary`.
        static let debugNameForSource = Self(rawValue: UINT(D3DCOMPILE_DEBUG_NAME_FOR_SOURCE))

        /// This enables a debug name to be generated based on compiled information.
        /// It requires `Flags.debug` to be set, and is exclusive with
        /// `Flags.debugNameForSource`.
        static let debugNameForBinary = Self(rawValue: UINT(D3DCOMPILE_DEBUG_NAME_FOR_BINARY))
    }
}

/// The result of a successful invocation to `DirectXShader.compile()`
class DirectXCompiledShader {
    private let shader: DirectX.Blob

    /// If non-nil, provides the error messages that where returned by DirectX
    /// during the shader compilation job.
    public let errorMessage: String?

    init(shader: DirectX.Blob, errorMessage: String?) {
        self.shader = shader
        self.errorMessage = errorMessage
    }
}

/// DirectX shader target
enum ShaderTarget {
    case pixelShader(PixelShaderVersion)
    case vertexShader(VertexShaderVersion)

    /// Target name string for D3DCompileFromFile invocations.
    var targetName: String {
        switch self {
        case .pixelShader(let version):
            return "ps_\(version.rawValue)"

        case .vertexShader(let version):
            return "vs_\(version.rawValue)"
        }
    }
}

/// Pixel shader target version
enum PixelShaderVersion: String {
    case v5_0 = "5_0"
}

/// Vertex shader target version
enum VertexShaderVersion: String {
    case v5_0 = "5_0"
}
