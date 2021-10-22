import WinSDK

typealias DxMeasurementsAction = D3D12_MEASUREMENTS_ACTION

public extension DxMeasurementsAction {
    static var KeepAll = D3D12_MEASUREMENTS_ACTION_KEEP_ALL
    
    static var CommitResults = D3D12_MEASUREMENTS_ACTION_COMMIT_RESULTS
    
    static var CommitResultsHighPriority = D3D12_MEASUREMENTS_ACTION_COMMIT_RESULTS_HIGH_PRIORITY
    
    static var DiscardPrevious = D3D12_MEASUREMENTS_ACTION_DISCARD_PREVIOUS
}
