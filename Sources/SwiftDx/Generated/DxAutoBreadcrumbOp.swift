import WinSDK

typealias DxAutoBreadcrumbOp = D3D12_AUTO_BREADCRUMB_OP

public extension DxAutoBreadcrumbOp {
    static var Setmarker = D3D12_AUTO_BREADCRUMB_OP_SETMARKER
    
    static var Beginevent = D3D12_AUTO_BREADCRUMB_OP_BEGINEVENT
    
    static var Endevent = D3D12_AUTO_BREADCRUMB_OP_ENDEVENT
    
    static var Drawinstanced = D3D12_AUTO_BREADCRUMB_OP_DRAWINSTANCED
    
    static var Drawindexedinstanced = D3D12_AUTO_BREADCRUMB_OP_DRAWINDEXEDINSTANCED
    
    static var Executeindirect = D3D12_AUTO_BREADCRUMB_OP_EXECUTEINDIRECT
    
    static var Dispatch = D3D12_AUTO_BREADCRUMB_OP_DISPATCH
    
    static var Copybufferregion = D3D12_AUTO_BREADCRUMB_OP_COPYBUFFERREGION
    
    static var Copytextureregion = D3D12_AUTO_BREADCRUMB_OP_COPYTEXTUREREGION
    
    static var Copyresource = D3D12_AUTO_BREADCRUMB_OP_COPYRESOURCE
    
    static var Copytiles = D3D12_AUTO_BREADCRUMB_OP_COPYTILES
    
    static var Resolvesubresource = D3D12_AUTO_BREADCRUMB_OP_RESOLVESUBRESOURCE
    
    static var Clearrendertargetview = D3D12_AUTO_BREADCRUMB_OP_CLEARRENDERTARGETVIEW
    
    static var Clearunorderedaccessview = D3D12_AUTO_BREADCRUMB_OP_CLEARUNORDEREDACCESSVIEW
    
    static var Cleardepthstencilview = D3D12_AUTO_BREADCRUMB_OP_CLEARDEPTHSTENCILVIEW
    
    static var Resourcebarrier = D3D12_AUTO_BREADCRUMB_OP_RESOURCEBARRIER
    
    static var Executebundle = D3D12_AUTO_BREADCRUMB_OP_EXECUTEBUNDLE
    
    static var Present = D3D12_AUTO_BREADCRUMB_OP_PRESENT
    
    static var Resolvequerydata = D3D12_AUTO_BREADCRUMB_OP_RESOLVEQUERYDATA
    
    static var Beginsubmission = D3D12_AUTO_BREADCRUMB_OP_BEGINSUBMISSION
    
    static var Endsubmission = D3D12_AUTO_BREADCRUMB_OP_ENDSUBMISSION
    
    static var Decodeframe = D3D12_AUTO_BREADCRUMB_OP_DECODEFRAME
    
    static var Processframes = D3D12_AUTO_BREADCRUMB_OP_PROCESSFRAMES
    
    static var Atomiccopybufferuint = D3D12_AUTO_BREADCRUMB_OP_ATOMICCOPYBUFFERUINT
    
    static var Atomiccopybufferuint64 = D3D12_AUTO_BREADCRUMB_OP_ATOMICCOPYBUFFERUINT64
    
    static var Resolvesubresourceregion = D3D12_AUTO_BREADCRUMB_OP_RESOLVESUBRESOURCEREGION
    
    static var Writebufferimmediate = D3D12_AUTO_BREADCRUMB_OP_WRITEBUFFERIMMEDIATE
    
    static var Decodeframe1 = D3D12_AUTO_BREADCRUMB_OP_DECODEFRAME1
    
    static var Setprotectedresourcesession = D3D12_AUTO_BREADCRUMB_OP_SETPROTECTEDRESOURCESESSION
    
    static var Decodeframe2 = D3D12_AUTO_BREADCRUMB_OP_DECODEFRAME2
    
    static var Processframes1 = D3D12_AUTO_BREADCRUMB_OP_PROCESSFRAMES1
    
    static var Buildraytracingaccelerationstructure = D3D12_AUTO_BREADCRUMB_OP_BUILDRAYTRACINGACCELERATIONSTRUCTURE
    
    static var Emitraytracingaccelerationstructurepostbuildinfo = D3D12_AUTO_BREADCRUMB_OP_EMITRAYTRACINGACCELERATIONSTRUCTUREPOSTBUILDINFO
    
    static var Copyraytracingaccelerationstructure = D3D12_AUTO_BREADCRUMB_OP_COPYRAYTRACINGACCELERATIONSTRUCTURE
    
    static var Dispatchrays = D3D12_AUTO_BREADCRUMB_OP_DISPATCHRAYS
    
    static var Initializemetacommand = D3D12_AUTO_BREADCRUMB_OP_INITIALIZEMETACOMMAND
    
    static var Executemetacommand = D3D12_AUTO_BREADCRUMB_OP_EXECUTEMETACOMMAND
    
    static var Estimatemotion = D3D12_AUTO_BREADCRUMB_OP_ESTIMATEMOTION
    
    static var Resolvemotionvectorheap = D3D12_AUTO_BREADCRUMB_OP_RESOLVEMOTIONVECTORHEAP
    
    static var Setpipelinestate1 = D3D12_AUTO_BREADCRUMB_OP_SETPIPELINESTATE1
    
    static var Initializeextensioncommand = D3D12_AUTO_BREADCRUMB_OP_INITIALIZEEXTENSIONCOMMAND
    
    static var Executeextensioncommand = D3D12_AUTO_BREADCRUMB_OP_EXECUTEEXTENSIONCOMMAND
    
    static var Dispatchmesh = D3D12_AUTO_BREADCRUMB_OP_DISPATCHMESH
    
    static var Encodeframe = D3D12_AUTO_BREADCRUMB_OP_ENCODEFRAME
    
    static var Resolveencoderoutputmetadata = D3D12_AUTO_BREADCRUMB_OP_RESOLVEENCODEROUTPUTMETADATA
}
