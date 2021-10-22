import WinSDK

typealias DxWaveMmaAccumDatatype = D3D12_WAVE_MMA_ACCUM_DATATYPE

public extension DxWaveMmaAccumDatatype {
    static var None = D3D12_WAVE_MMA_ACCUM_DATATYPE_NONE
    
    static var Int32 = D3D12_WAVE_MMA_ACCUM_DATATYPE_INT32
    
    static var Float16 = D3D12_WAVE_MMA_ACCUM_DATATYPE_FLOAT16
    
    static var Float = D3D12_WAVE_MMA_ACCUM_DATATYPE_FLOAT
}
