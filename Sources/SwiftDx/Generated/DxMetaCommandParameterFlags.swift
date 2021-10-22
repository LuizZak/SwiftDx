import WinSDK

typealias DxMetaCommandParameterFlags = D3D12_META_COMMAND_PARAMETER_FLAGS

public extension DxMetaCommandParameterFlags {
    static var FlagInput = D3D12_META_COMMAND_PARAMETER_FLAG_INPUT
    
    static var FlagOutput = D3D12_META_COMMAND_PARAMETER_FLAG_OUTPUT
}
