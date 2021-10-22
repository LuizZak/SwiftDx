import WinSDK

typealias DxMetaCommandParameterStage = D3D12_META_COMMAND_PARAMETER_STAGE

public extension DxMetaCommandParameterStage {
    static var Creation = D3D12_META_COMMAND_PARAMETER_STAGE_CREATION
    
    static var Initialization = D3D12_META_COMMAND_PARAMETER_STAGE_INITIALIZATION
    
    static var Execution = D3D12_META_COMMAND_PARAMETER_STAGE_EXECUTION
}
