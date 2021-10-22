import WinSDK

typealias DxQueryType = D3D12_QUERY_TYPE

public extension DxQueryType {
    static var Occlusion = D3D12_QUERY_TYPE_OCCLUSION
    
    static var BinaryOcclusion = D3D12_QUERY_TYPE_BINARY_OCCLUSION
    
    static var Timestamp = D3D12_QUERY_TYPE_TIMESTAMP
    
    static var PipelineStatistics = D3D12_QUERY_TYPE_PIPELINE_STATISTICS
    
    static var SoStatisticsStream0 = D3D12_QUERY_TYPE_SO_STATISTICS_STREAM0
    
    static var SoStatisticsStream1 = D3D12_QUERY_TYPE_SO_STATISTICS_STREAM1
    
    static var SoStatisticsStream2 = D3D12_QUERY_TYPE_SO_STATISTICS_STREAM2
    
    static var SoStatisticsStream3 = D3D12_QUERY_TYPE_SO_STATISTICS_STREAM3
    
    static var VideoDecodeStatistics = D3D12_QUERY_TYPE_VIDEO_DECODE_STATISTICS
    
    static var PipelineStatistics1 = D3D12_QUERY_TYPE_PIPELINE_STATISTICS1
}
