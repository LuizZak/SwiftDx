import WinSDK

typealias DxQueryHeapType = D3D12_QUERY_HEAP_TYPE

public extension DxQueryHeapType {
    static var Occlusion = D3D12_QUERY_HEAP_TYPE_OCCLUSION
    
    static var Timestamp = D3D12_QUERY_HEAP_TYPE_TIMESTAMP
    
    static var PipelineStatistics = D3D12_QUERY_HEAP_TYPE_PIPELINE_STATISTICS
    
    static var SoStatistics = D3D12_QUERY_HEAP_TYPE_SO_STATISTICS
    
    static var VideoDecodeStatistics = D3D12_QUERY_HEAP_TYPE_VIDEO_DECODE_STATISTICS
    
    static var CopyQueueTimestamp = D3D12_QUERY_HEAP_TYPE_COPY_QUEUE_TIMESTAMP
    
    static var PipelineStatistics1 = D3D12_QUERY_HEAP_TYPE_PIPELINE_STATISTICS1
}
