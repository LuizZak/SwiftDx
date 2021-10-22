import WinSDK

typealias DxWaveMmaInputDatatype = D3D12_WAVE_MMA_INPUT_DATATYPE

public extension DxWaveMmaInputDatatype {
    static var Invalid = D3D12_WAVE_MMA_INPUT_DATATYPE_INVALID
    
    static var Byte = D3D12_WAVE_MMA_INPUT_DATATYPE_BYTE
    
    static var Float16 = D3D12_WAVE_MMA_INPUT_DATATYPE_FLOAT16
    
    static var Float = D3D12_WAVE_MMA_INPUT_DATATYPE_FLOAT
}
