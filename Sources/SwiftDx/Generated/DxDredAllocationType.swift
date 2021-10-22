import WinSDK

typealias DxDredAllocationType = D3D12_DRED_ALLOCATION_TYPE

public extension DxDredAllocationType {
    static var CommandQueue = D3D12_DRED_ALLOCATION_TYPE_COMMAND_QUEUE
    
    static var CommandAllocator = D3D12_DRED_ALLOCATION_TYPE_COMMAND_ALLOCATOR
    
    static var PipelineState = D3D12_DRED_ALLOCATION_TYPE_PIPELINE_STATE
    
    static var CommandList = D3D12_DRED_ALLOCATION_TYPE_COMMAND_LIST
    
    static var Fence = D3D12_DRED_ALLOCATION_TYPE_FENCE
    
    static var DescriptorHeap = D3D12_DRED_ALLOCATION_TYPE_DESCRIPTOR_HEAP
    
    static var Heap = D3D12_DRED_ALLOCATION_TYPE_HEAP
    
    static var QueryHeap = D3D12_DRED_ALLOCATION_TYPE_QUERY_HEAP
    
    static var CommandSignature = D3D12_DRED_ALLOCATION_TYPE_COMMAND_SIGNATURE
    
    static var PipelineLibrary = D3D12_DRED_ALLOCATION_TYPE_PIPELINE_LIBRARY
    
    static var VideoDecoder = D3D12_DRED_ALLOCATION_TYPE_VIDEO_DECODER
    
    static var VideoProcessor = D3D12_DRED_ALLOCATION_TYPE_VIDEO_PROCESSOR
    
    static var Resource = D3D12_DRED_ALLOCATION_TYPE_RESOURCE
    
    static var Pass = D3D12_DRED_ALLOCATION_TYPE_PASS
    
    static var Cryptosession = D3D12_DRED_ALLOCATION_TYPE_CRYPTOSESSION
    
    static var Cryptosessionpolicy = D3D12_DRED_ALLOCATION_TYPE_CRYPTOSESSIONPOLICY
    
    static var Protectedresourcesession = D3D12_DRED_ALLOCATION_TYPE_PROTECTEDRESOURCESESSION
    
    static var VideoDecoderHeap = D3D12_DRED_ALLOCATION_TYPE_VIDEO_DECODER_HEAP
    
    static var CommandPool = D3D12_DRED_ALLOCATION_TYPE_COMMAND_POOL
    
    static var CommandRecorder = D3D12_DRED_ALLOCATION_TYPE_COMMAND_RECORDER
    
    static var StateObject = D3D12_DRED_ALLOCATION_TYPE_STATE_OBJECT
    
    static var Metacommand = D3D12_DRED_ALLOCATION_TYPE_METACOMMAND
    
    static var Schedulinggroup = D3D12_DRED_ALLOCATION_TYPE_SCHEDULINGGROUP
    
    static var VideoMotionEstimator = D3D12_DRED_ALLOCATION_TYPE_VIDEO_MOTION_ESTIMATOR
    
    static var VideoMotionVectorHeap = D3D12_DRED_ALLOCATION_TYPE_VIDEO_MOTION_VECTOR_HEAP
    
    static var VideoExtensionCommand = D3D12_DRED_ALLOCATION_TYPE_VIDEO_EXTENSION_COMMAND
    
    static var VideoEncoder = D3D12_DRED_ALLOCATION_TYPE_VIDEO_ENCODER
    
    static var VideoEncoderHeap = D3D12_DRED_ALLOCATION_TYPE_VIDEO_ENCODER_HEAP
    
    static var Invalid = D3D12_DRED_ALLOCATION_TYPE_INVALID
}
