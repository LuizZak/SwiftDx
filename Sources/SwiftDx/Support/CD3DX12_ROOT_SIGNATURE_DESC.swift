import WinSDK

typealias CD3DX12_ROOT_SIGNATURE_DESC = DxRootSignatureDesc

extension CD3DX12_ROOT_SIGNATURE_DESC {
    init(_ numParameters: Int,
         _ _pParameters: UnsafePointer<DxRootParameter>?,
         _ numStaticSamplers: Int = 0,
         _ _pStaticSamplers: UnsafePointer<DxStaticSamplerDesc>? = nil,
         _ flags: DxRootSignatureFlags = .none) {
        
        self.init()
        
        initialize(numParameters, _pParameters, numStaticSamplers, _pStaticSamplers, flags)
    }

    mutating func initialize(_ numParameters: Int,
                             _ _pParameters: UnsafePointer<DxRootParameter>?,
                             _ numStaticSamplers: Int = 0,
                             _ _pStaticSamplers: UnsafePointer<DxStaticSamplerDesc>? = nil,
                             _ flags: DxRootSignatureFlags = .none) {
        
        self.NumParameters = UINT(numParameters)
        self.pParameters = _pParameters
        self.NumStaticSamplers = UINT(numStaticSamplers)
        self.pStaticSamplers = _pStaticSamplers
        self.Flags = flags
    }
}

extension CD3DX12_ROOT_SIGNATURE_DESC: Equatable {
    public static func == (lhs: Self, rhs: Self) -> Bool {
        return
            lhs.NumParameters == rhs.NumParameters &&
            lhs.pParameters == rhs.pParameters &&
            lhs.NumStaticSamplers == rhs.NumStaticSamplers &&
            lhs.pStaticSamplers == rhs.pStaticSamplers &&
            lhs.Flags == rhs.Flags
    }
}
