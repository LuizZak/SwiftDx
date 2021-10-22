import WinSDK

typealias DxMessageId = D3D12_MESSAGE_ID

public extension DxMessageId {
    static var Unknown = D3D12_MESSAGE_ID_UNKNOWN
    
    static var StringFromApplication = D3D12_MESSAGE_ID_STRING_FROM_APPLICATION
    
    static var CorruptedThis = D3D12_MESSAGE_ID_CORRUPTED_THIS
    
    static var CorruptedParameter1 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER1
    
    static var CorruptedParameter2 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER2
    
    static var CorruptedParameter3 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER3
    
    static var CorruptedParameter4 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER4
    
    static var CorruptedParameter5 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER5
    
    static var CorruptedParameter6 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER6
    
    static var CorruptedParameter7 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER7
    
    static var CorruptedParameter8 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER8
    
    static var CorruptedParameter9 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER9
    
    static var CorruptedParameter10 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER10
    
    static var CorruptedParameter11 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER11
    
    static var CorruptedParameter12 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER12
    
    static var CorruptedParameter13 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER13
    
    static var CorruptedParameter14 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER14
    
    static var CorruptedParameter15 = D3D12_MESSAGE_ID_CORRUPTED_PARAMETER15
    
    static var CorruptedMultithreading = D3D12_MESSAGE_ID_CORRUPTED_MULTITHREADING
    
    static var MessageReportingOutofmemory = D3D12_MESSAGE_ID_MESSAGE_REPORTING_OUTOFMEMORY
    
    static var GetprivatedataMoredata = D3D12_MESSAGE_ID_GETPRIVATEDATA_MOREDATA
    
    static var SetprivatedataInvalidfreedata = D3D12_MESSAGE_ID_SETPRIVATEDATA_INVALIDFREEDATA
    
    static var SetprivatedataChangingparams = D3D12_MESSAGE_ID_SETPRIVATEDATA_CHANGINGPARAMS
    
    static var SetprivatedataOutofmemory = D3D12_MESSAGE_ID_SETPRIVATEDATA_OUTOFMEMORY
    
    static var CreateshaderresourceviewUnrecognizedformat = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_UNRECOGNIZEDFORMAT
    
    static var CreateshaderresourceviewInvaliddesc = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDDESC
    
    static var CreateshaderresourceviewInvalidformat = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDFORMAT
    
    static var CreateshaderresourceviewInvalidvideoplaneslice = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDVIDEOPLANESLICE
    
    static var CreateshaderresourceviewInvalidplaneslice = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDPLANESLICE
    
    static var CreateshaderresourceviewInvaliddimensions = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDDIMENSIONS
    
    static var CreateshaderresourceviewInvalidresource = D3D12_MESSAGE_ID_CREATESHADERRESOURCEVIEW_INVALIDRESOURCE
    
    static var CreaterendertargetviewUnrecognizedformat = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_UNRECOGNIZEDFORMAT
    
    static var CreaterendertargetviewUnsupportedformat = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_UNSUPPORTEDFORMAT
    
    static var CreaterendertargetviewInvaliddesc = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDDESC
    
    static var CreaterendertargetviewInvalidformat = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDFORMAT
    
    static var CreaterendertargetviewInvalidvideoplaneslice = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDVIDEOPLANESLICE
    
    static var CreaterendertargetviewInvalidplaneslice = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDPLANESLICE
    
    static var CreaterendertargetviewInvaliddimensions = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDDIMENSIONS
    
    static var CreaterendertargetviewInvalidresource = D3D12_MESSAGE_ID_CREATERENDERTARGETVIEW_INVALIDRESOURCE
    
    static var CreatedepthstencilviewUnrecognizedformat = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_UNRECOGNIZEDFORMAT
    
    static var CreatedepthstencilviewInvaliddesc = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_INVALIDDESC
    
    static var CreatedepthstencilviewInvalidformat = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_INVALIDFORMAT
    
    static var CreatedepthstencilviewInvaliddimensions = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_INVALIDDIMENSIONS
    
    static var CreatedepthstencilviewInvalidresource = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_INVALIDRESOURCE
    
    static var CreateinputlayoutOutofmemory = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_OUTOFMEMORY
    
    static var CreateinputlayoutToomanyelements = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_TOOMANYELEMENTS
    
    static var CreateinputlayoutInvalidformat = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDFORMAT
    
    static var CreateinputlayoutIncompatibleformat = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INCOMPATIBLEFORMAT
    
    static var CreateinputlayoutInvalidslot = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDSLOT
    
    static var CreateinputlayoutInvalidinputslotclass = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDINPUTSLOTCLASS
    
    static var CreateinputlayoutSteprateslotclassmismatch = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_STEPRATESLOTCLASSMISMATCH
    
    static var CreateinputlayoutInvalidslotclasschange = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDSLOTCLASSCHANGE
    
    static var CreateinputlayoutInvalidstepratechange = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDSTEPRATECHANGE
    
    static var CreateinputlayoutInvalidalignment = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_INVALIDALIGNMENT
    
    static var CreateinputlayoutDuplicatesemantic = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_DUPLICATESEMANTIC
    
    static var CreateinputlayoutUnparseableinputsignature = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_UNPARSEABLEINPUTSIGNATURE
    
    static var CreateinputlayoutNullsemantic = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_NULLSEMANTIC
    
    static var CreateinputlayoutMissingelement = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_MISSINGELEMENT
    
    static var CreatevertexshaderOutofmemory = D3D12_MESSAGE_ID_CREATEVERTEXSHADER_OUTOFMEMORY
    
    static var CreatevertexshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEVERTEXSHADER_INVALIDSHADERBYTECODE
    
    static var CreatevertexshaderInvalidshadertype = D3D12_MESSAGE_ID_CREATEVERTEXSHADER_INVALIDSHADERTYPE
    
    static var CreategeometryshaderOutofmemory = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADER_OUTOFMEMORY
    
    static var CreategeometryshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADER_INVALIDSHADERBYTECODE
    
    static var CreategeometryshaderInvalidshadertype = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADER_INVALIDSHADERTYPE
    
    static var CreategeometryshaderwithstreamoutputOutofmemory = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTOFMEMORY
    
    static var CreategeometryshaderwithstreamoutputInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERBYTECODE
    
    static var CreategeometryshaderwithstreamoutputInvalidshadertype = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSHADERTYPE
    
    static var CreategeometryshaderwithstreamoutputInvalidnumentries = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMENTRIES
    
    static var CreategeometryshaderwithstreamoutputOutputstreamstrideunused = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSTREAMSTRIDEUNUSED
    
    static var CreategeometryshaderwithstreamoutputOutputslot0expected = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_OUTPUTSLOT0EXPECTED
    
    static var CreategeometryshaderwithstreamoutputInvalidoutputslot = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSLOT
    
    static var CreategeometryshaderwithstreamoutputOnlyoneelementperslot = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_ONLYONEELEMENTPERSLOT
    
    static var CreategeometryshaderwithstreamoutputInvalidcomponentcount = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDCOMPONENTCOUNT
    
    static var CreategeometryshaderwithstreamoutputInvalidstartcomponentandcomponentcount = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTARTCOMPONENTANDCOMPONENTCOUNT
    
    static var CreategeometryshaderwithstreamoutputInvalidgapdefinition = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDGAPDEFINITION
    
    static var CreategeometryshaderwithstreamoutputRepeatedoutput = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_REPEATEDOUTPUT
    
    static var CreategeometryshaderwithstreamoutputInvalidoutputstreamstride = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDOUTPUTSTREAMSTRIDE
    
    static var CreategeometryshaderwithstreamoutputMissingsemantic = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGSEMANTIC
    
    static var CreategeometryshaderwithstreamoutputMaskmismatch = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MASKMISMATCH
    
    static var CreategeometryshaderwithstreamoutputCanthaveonlygaps = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_CANTHAVEONLYGAPS
    
    static var CreategeometryshaderwithstreamoutputDecltoocomplex = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DECLTOOCOMPLEX
    
    static var CreategeometryshaderwithstreamoutputMissingoutputsignature = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_MISSINGOUTPUTSIGNATURE
    
    static var CreatepixelshaderOutofmemory = D3D12_MESSAGE_ID_CREATEPIXELSHADER_OUTOFMEMORY
    
    static var CreatepixelshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEPIXELSHADER_INVALIDSHADERBYTECODE
    
    static var CreatepixelshaderInvalidshadertype = D3D12_MESSAGE_ID_CREATEPIXELSHADER_INVALIDSHADERTYPE
    
    static var CreaterasterizerstateInvalidfillmode = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALIDFILLMODE
    
    static var CreaterasterizerstateInvalidcullmode = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALIDCULLMODE
    
    static var CreaterasterizerstateInvaliddepthbiasclamp = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALIDDEPTHBIASCLAMP
    
    static var CreaterasterizerstateInvalidslopescaleddepthbias = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALIDSLOPESCALEDDEPTHBIAS
    
    static var CreatedepthstencilstateInvaliddepthwritemask = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDDEPTHWRITEMASK
    
    static var CreatedepthstencilstateInvaliddepthfunc = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDDEPTHFUNC
    
    static var CreatedepthstencilstateInvalidfrontfacestencilfailop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFAILOP
    
    static var CreatedepthstencilstateInvalidfrontfacestencilzfailop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILZFAILOP
    
    static var CreatedepthstencilstateInvalidfrontfacestencilpassop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILPASSOP
    
    static var CreatedepthstencilstateInvalidfrontfacestencilfunc = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDFRONTFACESTENCILFUNC
    
    static var CreatedepthstencilstateInvalidbackfacestencilfailop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFAILOP
    
    static var CreatedepthstencilstateInvalidbackfacestencilzfailop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILZFAILOP
    
    static var CreatedepthstencilstateInvalidbackfacestencilpassop = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILPASSOP
    
    static var CreatedepthstencilstateInvalidbackfacestencilfunc = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_INVALIDBACKFACESTENCILFUNC
    
    static var CreateblendstateInvalidsrcblend = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDSRCBLEND
    
    static var CreateblendstateInvaliddestblend = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDDESTBLEND
    
    static var CreateblendstateInvalidblendop = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDBLENDOP
    
    static var CreateblendstateInvalidsrcblendalpha = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDSRCBLENDALPHA
    
    static var CreateblendstateInvaliddestblendalpha = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDDESTBLENDALPHA
    
    static var CreateblendstateInvalidblendopalpha = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDBLENDOPALPHA
    
    static var CreateblendstateInvalidrendertargetwritemask = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDRENDERTARGETWRITEMASK
    
    static var CleardepthstencilviewInvalid = D3D12_MESSAGE_ID_CLEARDEPTHSTENCILVIEW_INVALID
    
    static var CommandListDrawRootSignatureNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_ROOT_SIGNATURE_NOT_SET
    
    static var CommandListDrawRootSignatureMismatch = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_ROOT_SIGNATURE_MISMATCH
    
    static var CommandListDrawVertexBufferNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_VERTEX_BUFFER_NOT_SET
    
    static var CommandListDrawVertexBufferStrideTooSmall = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_VERTEX_BUFFER_STRIDE_TOO_SMALL
    
    static var CommandListDrawVertexBufferTooSmall = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_VERTEX_BUFFER_TOO_SMALL
    
    static var CommandListDrawIndexBufferNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_INDEX_BUFFER_NOT_SET
    
    static var CommandListDrawIndexBufferFormatInvalid = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_INDEX_BUFFER_FORMAT_INVALID
    
    static var CommandListDrawIndexBufferTooSmall = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_INDEX_BUFFER_TOO_SMALL
    
    static var CommandListDrawInvalidPrimitivetopology = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_INVALID_PRIMITIVETOPOLOGY
    
    static var CommandListDrawVertexStrideUnaligned = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_VERTEX_STRIDE_UNALIGNED
    
    static var CommandListDrawIndexOffsetUnaligned = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_INDEX_OFFSET_UNALIGNED
    
    static var DeviceRemovalProcessAtFault = D3D12_MESSAGE_ID_DEVICE_REMOVAL_PROCESS_AT_FAULT
    
    static var DeviceRemovalProcessPossiblyAtFault = D3D12_MESSAGE_ID_DEVICE_REMOVAL_PROCESS_POSSIBLY_AT_FAULT
    
    static var DeviceRemovalProcessNotAtFault = D3D12_MESSAGE_ID_DEVICE_REMOVAL_PROCESS_NOT_AT_FAULT
    
    static var CreateinputlayoutTrailingDigitInSemantic = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_TRAILING_DIGIT_IN_SEMANTIC
    
    static var CreategeometryshaderwithstreamoutputTrailingDigitInSemantic = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_TRAILING_DIGIT_IN_SEMANTIC
    
    static var CreateinputlayoutTypeMismatch = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_TYPE_MISMATCH
    
    static var CreateinputlayoutEmptyLayout = D3D12_MESSAGE_ID_CREATEINPUTLAYOUT_EMPTY_LAYOUT
    
    static var LiveObjectSummary = D3D12_MESSAGE_ID_LIVE_OBJECT_SUMMARY
    
    static var LiveDevice = D3D12_MESSAGE_ID_LIVE_DEVICE
    
    static var LiveSwapchain = D3D12_MESSAGE_ID_LIVE_SWAPCHAIN
    
    static var CreatedepthstencilviewInvalidflags = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILVIEW_INVALIDFLAGS
    
    static var CreatevertexshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATEVERTEXSHADER_INVALIDCLASSLINKAGE
    
    static var CreategeometryshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADER_INVALIDCLASSLINKAGE
    
    static var CreategeometryshaderwithstreamoutputInvalidstreamtorasterizer = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAMTORASTERIZER
    
    static var CreatepixelshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATEPIXELSHADER_INVALIDCLASSLINKAGE
    
    static var CreategeometryshaderwithstreamoutputInvalidstream = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDSTREAM
    
    static var CreategeometryshaderwithstreamoutputUnexpectedentries = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDENTRIES
    
    static var CreategeometryshaderwithstreamoutputUnexpectedstrides = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UNEXPECTEDSTRIDES
    
    static var CreategeometryshaderwithstreamoutputInvalidnumstrides = D3D12_MESSAGE_ID_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_INVALIDNUMSTRIDES
    
    static var CreatehullshaderOutofmemory = D3D12_MESSAGE_ID_CREATEHULLSHADER_OUTOFMEMORY
    
    static var CreatehullshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEHULLSHADER_INVALIDSHADERBYTECODE
    
    static var CreatehullshaderInvalidshadertype = D3D12_MESSAGE_ID_CREATEHULLSHADER_INVALIDSHADERTYPE
    
    static var CreatehullshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATEHULLSHADER_INVALIDCLASSLINKAGE
    
    static var CreatedomainshaderOutofmemory = D3D12_MESSAGE_ID_CREATEDOMAINSHADER_OUTOFMEMORY
    
    static var CreatedomainshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEDOMAINSHADER_INVALIDSHADERBYTECODE
    
    static var CreatedomainshaderInvalidshadertype = D3D12_MESSAGE_ID_CREATEDOMAINSHADER_INVALIDSHADERTYPE
    
    static var CreatedomainshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATEDOMAINSHADER_INVALIDCLASSLINKAGE
    
    static var ResourceUnmapNotmapped = D3D12_MESSAGE_ID_RESOURCE_UNMAP_NOTMAPPED
    
    static var DeviceCheckfeaturesupportMismatchedDataSize = D3D12_MESSAGE_ID_DEVICE_CHECKFEATURESUPPORT_MISMATCHED_DATA_SIZE
    
    static var CreatecomputeshaderOutofmemory = D3D12_MESSAGE_ID_CREATECOMPUTESHADER_OUTOFMEMORY
    
    static var CreatecomputeshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATECOMPUTESHADER_INVALIDSHADERBYTECODE
    
    static var CreatecomputeshaderInvalidclasslinkage = D3D12_MESSAGE_ID_CREATECOMPUTESHADER_INVALIDCLASSLINKAGE
    
    static var DeviceCreatevertexshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEVERTEXSHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreatehullshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEHULLSHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreatedomainshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEDOMAINSHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderwithstreamoutputDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreatepixelshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEPIXELSHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var DeviceCreatecomputeshaderDoublefloatopsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATECOMPUTESHADER_DOUBLEFLOATOPSNOTSUPPORTED
    
    static var CreateunorderedaccessviewInvalidresource = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDRESOURCE
    
    static var CreateunorderedaccessviewInvaliddesc = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDDESC
    
    static var CreateunorderedaccessviewInvalidformat = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDFORMAT
    
    static var CreateunorderedaccessviewInvalidvideoplaneslice = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDVIDEOPLANESLICE
    
    static var CreateunorderedaccessviewInvalidplaneslice = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDPLANESLICE
    
    static var CreateunorderedaccessviewInvaliddimensions = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDDIMENSIONS
    
    static var CreateunorderedaccessviewUnrecognizedformat = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_UNRECOGNIZEDFORMAT
    
    static var CreateunorderedaccessviewInvalidflags = D3D12_MESSAGE_ID_CREATEUNORDEREDACCESSVIEW_INVALIDFLAGS
    
    static var CreaterasterizerstateInvalidforcedsamplecount = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALIDFORCEDSAMPLECOUNT
    
    static var CreateblendstateInvalidlogicops = D3D12_MESSAGE_ID_CREATEBLENDSTATE_INVALIDLOGICOPS
    
    static var DeviceCreatevertexshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEVERTEXSHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreatehullshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEHULLSHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreatedomainshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEDOMAINSHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderwithstreamoutputDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreatepixelshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEPIXELSHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreatecomputeshaderDoubleextensionsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATECOMPUTESHADER_DOUBLEEXTENSIONSNOTSUPPORTED
    
    static var DeviceCreatevertexshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEVERTEXSHADER_UAVSNOTSUPPORTED
    
    static var DeviceCreatehullshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEHULLSHADER_UAVSNOTSUPPORTED
    
    static var DeviceCreatedomainshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEDOMAINSHADER_UAVSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADER_UAVSNOTSUPPORTED
    
    static var DeviceCreategeometryshaderwithstreamoutputUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEGEOMETRYSHADERWITHSTREAMOUTPUT_UAVSNOTSUPPORTED
    
    static var DeviceCreatepixelshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATEPIXELSHADER_UAVSNOTSUPPORTED
    
    static var DeviceCreatecomputeshaderUavsnotsupported = D3D12_MESSAGE_ID_DEVICE_CREATECOMPUTESHADER_UAVSNOTSUPPORTED
    
    static var DeviceClearviewInvalidsourcerect = D3D12_MESSAGE_ID_DEVICE_CLEARVIEW_INVALIDSOURCERECT
    
    static var DeviceClearviewEmptyrect = D3D12_MESSAGE_ID_DEVICE_CLEARVIEW_EMPTYRECT
    
    static var UpdatetilemappingsInvalidParameter = D3D12_MESSAGE_ID_UPDATETILEMAPPINGS_INVALID_PARAMETER
    
    static var CopytilemappingsInvalidParameter = D3D12_MESSAGE_ID_COPYTILEMAPPINGS_INVALID_PARAMETER
    
    static var CreatedeviceInvalidargs = D3D12_MESSAGE_ID_CREATEDEVICE_INVALIDARGS
    
    static var CreatedeviceWarning = D3D12_MESSAGE_ID_CREATEDEVICE_WARNING
    
    static var ResourceBarrierInvalidType = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_TYPE
    
    static var ResourceBarrierNullPointer = D3D12_MESSAGE_ID_RESOURCE_BARRIER_NULL_POINTER
    
    static var ResourceBarrierInvalidSubresource = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_SUBRESOURCE
    
    static var ResourceBarrierReservedBits = D3D12_MESSAGE_ID_RESOURCE_BARRIER_RESERVED_BITS
    
    static var ResourceBarrierMissingBindFlags = D3D12_MESSAGE_ID_RESOURCE_BARRIER_MISSING_BIND_FLAGS
    
    static var ResourceBarrierMismatchingMiscFlags = D3D12_MESSAGE_ID_RESOURCE_BARRIER_MISMATCHING_MISC_FLAGS
    
    static var ResourceBarrierMatchingStates = D3D12_MESSAGE_ID_RESOURCE_BARRIER_MATCHING_STATES
    
    static var ResourceBarrierInvalidCombination = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_COMBINATION
    
    static var ResourceBarrierBeforeAfterMismatch = D3D12_MESSAGE_ID_RESOURCE_BARRIER_BEFORE_AFTER_MISMATCH
    
    static var ResourceBarrierInvalidResource = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_RESOURCE
    
    static var ResourceBarrierSampleCount = D3D12_MESSAGE_ID_RESOURCE_BARRIER_SAMPLE_COUNT
    
    static var ResourceBarrierInvalidFlags = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_FLAGS
    
    static var ResourceBarrierInvalidCombinedFlags = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_COMBINED_FLAGS
    
    static var ResourceBarrierInvalidFlagsForFormat = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_FLAGS_FOR_FORMAT
    
    static var ResourceBarrierInvalidSplitBarrier = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_SPLIT_BARRIER
    
    static var ResourceBarrierUnmatchedEnd = D3D12_MESSAGE_ID_RESOURCE_BARRIER_UNMATCHED_END
    
    static var ResourceBarrierUnmatchedBegin = D3D12_MESSAGE_ID_RESOURCE_BARRIER_UNMATCHED_BEGIN
    
    static var ResourceBarrierInvalidFlag = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_FLAG
    
    static var ResourceBarrierInvalidCommandListType = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_COMMAND_LIST_TYPE
    
    static var InvalidSubresourceState = D3D12_MESSAGE_ID_INVALID_SUBRESOURCE_STATE
    
    static var CommandAllocatorContention = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_CONTENTION
    
    static var CommandAllocatorReset = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_RESET
    
    static var CommandAllocatorResetBundle = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_RESET_BUNDLE
    
    static var CommandAllocatorCannotReset = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_CANNOT_RESET
    
    static var CommandListOpen = D3D12_MESSAGE_ID_COMMAND_LIST_OPEN
    
    static var InvalidBundleApi = D3D12_MESSAGE_ID_INVALID_BUNDLE_API
    
    static var CommandListClosed = D3D12_MESSAGE_ID_COMMAND_LIST_CLOSED
    
    static var WrongCommandAllocatorType = D3D12_MESSAGE_ID_WRONG_COMMAND_ALLOCATOR_TYPE
    
    static var CommandAllocatorSync = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_SYNC
    
    static var CommandListSync = D3D12_MESSAGE_ID_COMMAND_LIST_SYNC
    
    static var SetDescriptorHeapInvalid = D3D12_MESSAGE_ID_SET_DESCRIPTOR_HEAP_INVALID
    
    static var CreateCommandqueue = D3D12_MESSAGE_ID_CREATE_COMMANDQUEUE
    
    static var CreateCommandallocator = D3D12_MESSAGE_ID_CREATE_COMMANDALLOCATOR
    
    static var CreatePipelinestate = D3D12_MESSAGE_ID_CREATE_PIPELINESTATE
    
    static var CreateCommandlist12 = D3D12_MESSAGE_ID_CREATE_COMMANDLIST12
    
    static var CreateResource = D3D12_MESSAGE_ID_CREATE_RESOURCE
    
    static var CreateDescriptorheap = D3D12_MESSAGE_ID_CREATE_DESCRIPTORHEAP
    
    static var CreateRootsignature = D3D12_MESSAGE_ID_CREATE_ROOTSIGNATURE
    
    static var CreateLibrary = D3D12_MESSAGE_ID_CREATE_LIBRARY
    
    static var CreateHeap = D3D12_MESSAGE_ID_CREATE_HEAP
    
    static var CreateMonitoredfence = D3D12_MESSAGE_ID_CREATE_MONITOREDFENCE
    
    static var CreateQueryheap = D3D12_MESSAGE_ID_CREATE_QUERYHEAP
    
    static var CreateCommandsignature = D3D12_MESSAGE_ID_CREATE_COMMANDSIGNATURE
    
    static var LiveCommandqueue = D3D12_MESSAGE_ID_LIVE_COMMANDQUEUE
    
    static var LiveCommandallocator = D3D12_MESSAGE_ID_LIVE_COMMANDALLOCATOR
    
    static var LivePipelinestate = D3D12_MESSAGE_ID_LIVE_PIPELINESTATE
    
    static var LiveCommandlist12 = D3D12_MESSAGE_ID_LIVE_COMMANDLIST12
    
    static var LiveResource = D3D12_MESSAGE_ID_LIVE_RESOURCE
    
    static var LiveDescriptorheap = D3D12_MESSAGE_ID_LIVE_DESCRIPTORHEAP
    
    static var LiveRootsignature = D3D12_MESSAGE_ID_LIVE_ROOTSIGNATURE
    
    static var LiveLibrary = D3D12_MESSAGE_ID_LIVE_LIBRARY
    
    static var LiveHeap = D3D12_MESSAGE_ID_LIVE_HEAP
    
    static var LiveMonitoredfence = D3D12_MESSAGE_ID_LIVE_MONITOREDFENCE
    
    static var LiveQueryheap = D3D12_MESSAGE_ID_LIVE_QUERYHEAP
    
    static var LiveCommandsignature = D3D12_MESSAGE_ID_LIVE_COMMANDSIGNATURE
    
    static var DestroyCommandqueue = D3D12_MESSAGE_ID_DESTROY_COMMANDQUEUE
    
    static var DestroyCommandallocator = D3D12_MESSAGE_ID_DESTROY_COMMANDALLOCATOR
    
    static var DestroyPipelinestate = D3D12_MESSAGE_ID_DESTROY_PIPELINESTATE
    
    static var DestroyCommandlist12 = D3D12_MESSAGE_ID_DESTROY_COMMANDLIST12
    
    static var DestroyResource = D3D12_MESSAGE_ID_DESTROY_RESOURCE
    
    static var DestroyDescriptorheap = D3D12_MESSAGE_ID_DESTROY_DESCRIPTORHEAP
    
    static var DestroyRootsignature = D3D12_MESSAGE_ID_DESTROY_ROOTSIGNATURE
    
    static var DestroyLibrary = D3D12_MESSAGE_ID_DESTROY_LIBRARY
    
    static var DestroyHeap = D3D12_MESSAGE_ID_DESTROY_HEAP
    
    static var DestroyMonitoredfence = D3D12_MESSAGE_ID_DESTROY_MONITOREDFENCE
    
    static var DestroyQueryheap = D3D12_MESSAGE_ID_DESTROY_QUERYHEAP
    
    static var DestroyCommandsignature = D3D12_MESSAGE_ID_DESTROY_COMMANDSIGNATURE
    
    static var CreateresourceInvaliddimensions = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDDIMENSIONS
    
    static var CreateresourceInvalidmiscflags = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDMISCFLAGS
    
    static var CreateresourceInvalidargReturn = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDARG_RETURN
    
    static var CreateresourceOutofmemoryReturn = D3D12_MESSAGE_ID_CREATERESOURCE_OUTOFMEMORY_RETURN
    
    static var CreateresourceInvaliddesc = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDDESC
    
    static var PossiblyInvalidSubresourceState = D3D12_MESSAGE_ID_POSSIBLY_INVALID_SUBRESOURCE_STATE
    
    static var InvalidUseOfNonResidentResource = D3D12_MESSAGE_ID_INVALID_USE_OF_NON_RESIDENT_RESOURCE
    
    static var PossibleInvalidUseOfNonResidentResource = D3D12_MESSAGE_ID_POSSIBLE_INVALID_USE_OF_NON_RESIDENT_RESOURCE
    
    static var BundlePipelineStateMismatch = D3D12_MESSAGE_ID_BUNDLE_PIPELINE_STATE_MISMATCH
    
    static var PrimitiveTopologyMismatchPipelineState = D3D12_MESSAGE_ID_PRIMITIVE_TOPOLOGY_MISMATCH_PIPELINE_STATE
    
    static var RenderTargetFormatMismatchPipelineState = D3D12_MESSAGE_ID_RENDER_TARGET_FORMAT_MISMATCH_PIPELINE_STATE
    
    static var RenderTargetSampleDescMismatchPipelineState = D3D12_MESSAGE_ID_RENDER_TARGET_SAMPLE_DESC_MISMATCH_PIPELINE_STATE
    
    static var DepthStencilFormatMismatchPipelineState = D3D12_MESSAGE_ID_DEPTH_STENCIL_FORMAT_MISMATCH_PIPELINE_STATE
    
    static var DepthStencilSampleDescMismatchPipelineState = D3D12_MESSAGE_ID_DEPTH_STENCIL_SAMPLE_DESC_MISMATCH_PIPELINE_STATE
    
    static var CreateshaderInvalidbytecode = D3D12_MESSAGE_ID_CREATESHADER_INVALIDBYTECODE
    
    static var CreateheapNulldesc = D3D12_MESSAGE_ID_CREATEHEAP_NULLDESC
    
    static var CreateheapInvalidsize = D3D12_MESSAGE_ID_CREATEHEAP_INVALIDSIZE
    
    static var CreateheapUnrecognizedheaptype = D3D12_MESSAGE_ID_CREATEHEAP_UNRECOGNIZEDHEAPTYPE
    
    static var CreateheapUnrecognizedcpupageproperties = D3D12_MESSAGE_ID_CREATEHEAP_UNRECOGNIZEDCPUPAGEPROPERTIES
    
    static var CreateheapUnrecognizedmemorypool = D3D12_MESSAGE_ID_CREATEHEAP_UNRECOGNIZEDMEMORYPOOL
    
    static var CreateheapInvalidproperties = D3D12_MESSAGE_ID_CREATEHEAP_INVALIDPROPERTIES
    
    static var CreateheapInvalidalignment = D3D12_MESSAGE_ID_CREATEHEAP_INVALIDALIGNMENT
    
    static var CreateheapUnrecognizedmiscflags = D3D12_MESSAGE_ID_CREATEHEAP_UNRECOGNIZEDMISCFLAGS
    
    static var CreateheapInvalidmiscflags = D3D12_MESSAGE_ID_CREATEHEAP_INVALIDMISCFLAGS
    
    static var CreateheapInvalidargReturn = D3D12_MESSAGE_ID_CREATEHEAP_INVALIDARG_RETURN
    
    static var CreateheapOutofmemoryReturn = D3D12_MESSAGE_ID_CREATEHEAP_OUTOFMEMORY_RETURN
    
    static var CreateresourceandheapNullheapproperties = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_NULLHEAPPROPERTIES
    
    static var CreateresourceandheapUnrecognizedheaptype = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_UNRECOGNIZEDHEAPTYPE
    
    static var CreateresourceandheapUnrecognizedcpupageproperties = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_UNRECOGNIZEDCPUPAGEPROPERTIES
    
    static var CreateresourceandheapUnrecognizedmemorypool = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_UNRECOGNIZEDMEMORYPOOL
    
    static var CreateresourceandheapInvalidheapproperties = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_INVALIDHEAPPROPERTIES
    
    static var CreateresourceandheapUnrecognizedheapmiscflags = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_UNRECOGNIZEDHEAPMISCFLAGS
    
    static var CreateresourceandheapInvalidheapmiscflags = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_INVALIDHEAPMISCFLAGS
    
    static var CreateresourceandheapInvalidargReturn = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_INVALIDARG_RETURN
    
    static var CreateresourceandheapOutofmemoryReturn = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_OUTOFMEMORY_RETURN
    
    static var GetcustomheappropertiesUnrecognizedheaptype = D3D12_MESSAGE_ID_GETCUSTOMHEAPPROPERTIES_UNRECOGNIZEDHEAPTYPE
    
    static var GetcustomheappropertiesInvalidheaptype = D3D12_MESSAGE_ID_GETCUSTOMHEAPPROPERTIES_INVALIDHEAPTYPE
    
    static var CreateDescriptorHeapInvalidDesc = D3D12_MESSAGE_ID_CREATE_DESCRIPTOR_HEAP_INVALID_DESC
    
    static var InvalidDescriptorHandle = D3D12_MESSAGE_ID_INVALID_DESCRIPTOR_HANDLE
    
    static var CreaterasterizerstateInvalidConservativerastermode = D3D12_MESSAGE_ID_CREATERASTERIZERSTATE_INVALID_CONSERVATIVERASTERMODE
    
    static var CreateConstantBufferViewInvalidResource = D3D12_MESSAGE_ID_CREATE_CONSTANT_BUFFER_VIEW_INVALID_RESOURCE
    
    static var CreateConstantBufferViewInvalidDesc = D3D12_MESSAGE_ID_CREATE_CONSTANT_BUFFER_VIEW_INVALID_DESC
    
    static var CreateUnorderedaccessViewInvalidCounterUsage = D3D12_MESSAGE_ID_CREATE_UNORDEREDACCESS_VIEW_INVALID_COUNTER_USAGE
    
    static var CopyDescriptorsInvalidRanges = D3D12_MESSAGE_ID_COPY_DESCRIPTORS_INVALID_RANGES
    
    static var CopyDescriptorsWriteOnlyDescriptor = D3D12_MESSAGE_ID_COPY_DESCRIPTORS_WRITE_ONLY_DESCRIPTOR
    
    static var CreategraphicspipelinestateRtvFormatNotUnknown = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_RTV_FORMAT_NOT_UNKNOWN
    
    static var CreategraphicspipelinestateInvalidRenderTargetCount = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_RENDER_TARGET_COUNT
    
    static var CreategraphicspipelinestateVertexShaderNotSet = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_VERTEX_SHADER_NOT_SET
    
    static var CreategraphicspipelinestateInputlayoutNotSet = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INPUTLAYOUT_NOT_SET
    
    static var CreategraphicspipelinestateShaderLinkageHsDsSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_HS_DS_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateShaderLinkageRegisterindex = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_REGISTERINDEX
    
    static var CreategraphicspipelinestateShaderLinkageComponenttype = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_COMPONENTTYPE
    
    static var CreategraphicspipelinestateShaderLinkageRegistermask = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_REGISTERMASK
    
    static var CreategraphicspipelinestateShaderLinkageSystemvalue = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_SYSTEMVALUE
    
    static var CreategraphicspipelinestateShaderLinkageNeverwrittenAlwaysreads = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_NEVERWRITTEN_ALWAYSREADS
    
    static var CreategraphicspipelinestateShaderLinkageMinprecision = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_MINPRECISION
    
    static var CreategraphicspipelinestateShaderLinkageSemanticnameNotFound = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_LINKAGE_SEMANTICNAME_NOT_FOUND
    
    static var CreategraphicspipelinestateHsXorDsMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_HS_XOR_DS_MISMATCH
    
    static var CreategraphicspipelinestateHullShaderInputTopologyMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_HULL_SHADER_INPUT_TOPOLOGY_MISMATCH
    
    static var CreategraphicspipelinestateHsDsControlPointCountMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_HS_DS_CONTROL_POINT_COUNT_MISMATCH
    
    static var CreategraphicspipelinestateHsDsTessellatorDomainMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_HS_DS_TESSELLATOR_DOMAIN_MISMATCH
    
    static var CreategraphicspipelinestateInvalidUseOfCenterMultisamplePattern = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_USE_OF_CENTER_MULTISAMPLE_PATTERN
    
    static var CreategraphicspipelinestateInvalidUseOfForcedSampleCount = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_USE_OF_FORCED_SAMPLE_COUNT
    
    static var CreategraphicspipelinestateInvalidPrimitivetopology = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_PRIMITIVETOPOLOGY
    
    static var CreategraphicspipelinestateInvalidSystemvalue = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_SYSTEMVALUE
    
    static var CreategraphicspipelinestateOmDualSourceBlendingCanOnlyHaveRenderTarget0 = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_OM_DUAL_SOURCE_BLENDING_CAN_ONLY_HAVE_RENDER_TARGET_0
    
    static var CreategraphicspipelinestateOmRenderTargetDoesNotSupportBlending = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_OM_RENDER_TARGET_DOES_NOT_SUPPORT_BLENDING
    
    static var CreategraphicspipelinestatePsOutputTypeMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_PS_OUTPUT_TYPE_MISMATCH
    
    static var CreategraphicspipelinestateOmRenderTargetDoesNotSupportLogicOps = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_OM_RENDER_TARGET_DOES_NOT_SUPPORT_LOGIC_OPS
    
    static var CreategraphicspipelinestateRendertargetviewNotSet = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_RENDERTARGETVIEW_NOT_SET
    
    static var CreategraphicspipelinestateDepthstencilviewNotSet = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_DEPTHSTENCILVIEW_NOT_SET
    
    static var CreategraphicspipelinestateGsInputPrimitiveMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_GS_INPUT_PRIMITIVE_MISMATCH
    
    static var CreategraphicspipelinestatePositionNotPresent = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_POSITION_NOT_PRESENT
    
    static var CreategraphicspipelinestateMissingRootSignatureFlags = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_MISSING_ROOT_SIGNATURE_FLAGS
    
    static var CreategraphicspipelinestateInvalidIndexBufferProperties = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_INDEX_BUFFER_PROPERTIES
    
    static var CreategraphicspipelinestateInvalidSampleDesc = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INVALID_SAMPLE_DESC
    
    static var CreategraphicspipelinestateHsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_HS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateDsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_DS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateVsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_VS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateGsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_GS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestatePsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_PS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateMissingRootSignature = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_MISSING_ROOT_SIGNATURE
    
    static var ExecuteBundleOpenBundle = D3D12_MESSAGE_ID_EXECUTE_BUNDLE_OPEN_BUNDLE
    
    static var ExecuteBundleDescriptorHeapMismatch = D3D12_MESSAGE_ID_EXECUTE_BUNDLE_DESCRIPTOR_HEAP_MISMATCH
    
    static var ExecuteBundleType = D3D12_MESSAGE_ID_EXECUTE_BUNDLE_TYPE
    
    static var DrawEmptyScissorRectangle = D3D12_MESSAGE_ID_DRAW_EMPTY_SCISSOR_RECTANGLE
    
    static var CreateRootSignatureBlobNotFound = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_BLOB_NOT_FOUND
    
    static var CreateRootSignatureDeserializeFailed = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_DESERIALIZE_FAILED
    
    static var CreateRootSignatureInvalidConfiguration = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_INVALID_CONFIGURATION
    
    static var CreateRootSignatureNotSupportedOnDevice = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_NOT_SUPPORTED_ON_DEVICE
    
    static var CreateresourceandheapNullresourceproperties = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_NULLRESOURCEPROPERTIES
    
    static var CreateresourceandheapNullheap = D3D12_MESSAGE_ID_CREATERESOURCEANDHEAP_NULLHEAP
    
    static var GetresourceallocationinfoInvalidrdescs = D3D12_MESSAGE_ID_GETRESOURCEALLOCATIONINFO_INVALIDRDESCS
    
    static var MakeresidentNullobjectarray = D3D12_MESSAGE_ID_MAKERESIDENT_NULLOBJECTARRAY
    
    static var EvictNullobjectarray = D3D12_MESSAGE_ID_EVICT_NULLOBJECTARRAY
    
    static var SetDescriptorTableInvalid = D3D12_MESSAGE_ID_SET_DESCRIPTOR_TABLE_INVALID
    
    static var SetRootConstantInvalid = D3D12_MESSAGE_ID_SET_ROOT_CONSTANT_INVALID
    
    static var SetRootConstantBufferViewInvalid = D3D12_MESSAGE_ID_SET_ROOT_CONSTANT_BUFFER_VIEW_INVALID
    
    static var SetRootShaderResourceViewInvalid = D3D12_MESSAGE_ID_SET_ROOT_SHADER_RESOURCE_VIEW_INVALID
    
    static var SetRootUnorderedAccessViewInvalid = D3D12_MESSAGE_ID_SET_ROOT_UNORDERED_ACCESS_VIEW_INVALID
    
    static var SetVertexBuffersInvalidDesc = D3D12_MESSAGE_ID_SET_VERTEX_BUFFERS_INVALID_DESC
    
    static var SetIndexBufferInvalidDesc = D3D12_MESSAGE_ID_SET_INDEX_BUFFER_INVALID_DESC
    
    static var SetStreamOutputBuffersInvalidDesc = D3D12_MESSAGE_ID_SET_STREAM_OUTPUT_BUFFERS_INVALID_DESC
    
    static var CreateresourceUnrecognizeddimensionality = D3D12_MESSAGE_ID_CREATERESOURCE_UNRECOGNIZEDDIMENSIONALITY
    
    static var CreateresourceUnrecognizedlayout = D3D12_MESSAGE_ID_CREATERESOURCE_UNRECOGNIZEDLAYOUT
    
    static var CreateresourceInvaliddimensionality = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDDIMENSIONALITY
    
    static var CreateresourceInvalidalignment = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDALIGNMENT
    
    static var CreateresourceInvalidmiplevels = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDMIPLEVELS
    
    static var CreateresourceInvalidsampledesc = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDSAMPLEDESC
    
    static var CreateresourceInvalidlayout = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDLAYOUT
    
    static var SetIndexBufferInvalid = D3D12_MESSAGE_ID_SET_INDEX_BUFFER_INVALID
    
    static var SetVertexBuffersInvalid = D3D12_MESSAGE_ID_SET_VERTEX_BUFFERS_INVALID
    
    static var SetStreamOutputBuffersInvalid = D3D12_MESSAGE_ID_SET_STREAM_OUTPUT_BUFFERS_INVALID
    
    static var SetRenderTargetsInvalid = D3D12_MESSAGE_ID_SET_RENDER_TARGETS_INVALID
    
    static var CreatequeryHeapInvalidParameters = D3D12_MESSAGE_ID_CREATEQUERY_HEAP_INVALID_PARAMETERS
    
    static var BeginEndQueryInvalidParameters = D3D12_MESSAGE_ID_BEGIN_END_QUERY_INVALID_PARAMETERS
    
    static var CloseCommandListOpenQuery = D3D12_MESSAGE_ID_CLOSE_COMMAND_LIST_OPEN_QUERY
    
    static var ResolveQueryDataInvalidParameters = D3D12_MESSAGE_ID_RESOLVE_QUERY_DATA_INVALID_PARAMETERS
    
    static var SetPredicationInvalidParameters = D3D12_MESSAGE_ID_SET_PREDICATION_INVALID_PARAMETERS
    
    static var TimestampsNotSupported = D3D12_MESSAGE_ID_TIMESTAMPS_NOT_SUPPORTED
    
    static var CreateresourceUnrecognizedformat = D3D12_MESSAGE_ID_CREATERESOURCE_UNRECOGNIZEDFORMAT
    
    static var CreateresourceInvalidformat = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDFORMAT
    
    static var GetcopyablefootprintsInvalidsubresourcerange = D3D12_MESSAGE_ID_GETCOPYABLEFOOTPRINTS_INVALIDSUBRESOURCERANGE
    
    static var GetcopyablefootprintsInvalidbaseoffset = D3D12_MESSAGE_ID_GETCOPYABLEFOOTPRINTS_INVALIDBASEOFFSET
    
    static var GetcopyablelayoutInvalidsubresourcerange = D3D12_MESSAGE_ID_GETCOPYABLELAYOUT_INVALIDSUBRESOURCERANGE
    
    static var GetcopyablelayoutInvalidbaseoffset = D3D12_MESSAGE_ID_GETCOPYABLELAYOUT_INVALIDBASEOFFSET
    
    static var ResourceBarrierInvalidHeap = D3D12_MESSAGE_ID_RESOURCE_BARRIER_INVALID_HEAP
    
    static var CreateSamplerInvalid = D3D12_MESSAGE_ID_CREATE_SAMPLER_INVALID
    
    static var CreatecommandsignatureInvalid = D3D12_MESSAGE_ID_CREATECOMMANDSIGNATURE_INVALID
    
    static var ExecuteIndirectInvalidParameters = D3D12_MESSAGE_ID_EXECUTE_INDIRECT_INVALID_PARAMETERS
    
    static var GetgpuvirtualaddressInvalidResourceDimension = D3D12_MESSAGE_ID_GETGPUVIRTUALADDRESS_INVALID_RESOURCE_DIMENSION
    
    static var CreateresourceInvalidclearvalue = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDCLEARVALUE
    
    static var CreateresourceUnrecognizedclearvalueformat = D3D12_MESSAGE_ID_CREATERESOURCE_UNRECOGNIZEDCLEARVALUEFORMAT
    
    static var CreateresourceInvalidclearvalueformat = D3D12_MESSAGE_ID_CREATERESOURCE_INVALIDCLEARVALUEFORMAT
    
    static var CreateresourceClearvaluedenormflush = D3D12_MESSAGE_ID_CREATERESOURCE_CLEARVALUEDENORMFLUSH
    
    static var ClearrendertargetviewMismatchingclearvalue = D3D12_MESSAGE_ID_CLEARRENDERTARGETVIEW_MISMATCHINGCLEARVALUE
    
    static var CleardepthstencilviewMismatchingclearvalue = D3D12_MESSAGE_ID_CLEARDEPTHSTENCILVIEW_MISMATCHINGCLEARVALUE
    
    static var MapInvalidheap = D3D12_MESSAGE_ID_MAP_INVALIDHEAP
    
    static var UnmapInvalidheap = D3D12_MESSAGE_ID_UNMAP_INVALIDHEAP
    
    static var MapInvalidresource = D3D12_MESSAGE_ID_MAP_INVALIDRESOURCE
    
    static var UnmapInvalidresource = D3D12_MESSAGE_ID_UNMAP_INVALIDRESOURCE
    
    static var MapInvalidsubresource = D3D12_MESSAGE_ID_MAP_INVALIDSUBRESOURCE
    
    static var UnmapInvalidsubresource = D3D12_MESSAGE_ID_UNMAP_INVALIDSUBRESOURCE
    
    static var MapInvalidrange = D3D12_MESSAGE_ID_MAP_INVALIDRANGE
    
    static var UnmapInvalidrange = D3D12_MESSAGE_ID_UNMAP_INVALIDRANGE
    
    static var MapInvaliddatapointer = D3D12_MESSAGE_ID_MAP_INVALIDDATAPOINTER
    
    static var MapInvalidargReturn = D3D12_MESSAGE_ID_MAP_INVALIDARG_RETURN
    
    static var MapOutofmemoryReturn = D3D12_MESSAGE_ID_MAP_OUTOFMEMORY_RETURN
    
    static var ExecutecommandlistsBundlenotsupported = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_BUNDLENOTSUPPORTED
    
    static var ExecutecommandlistsCommandlistmismatch = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_COMMANDLISTMISMATCH
    
    static var ExecutecommandlistsOpencommandlist = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_OPENCOMMANDLIST
    
    static var ExecutecommandlistsFailedcommandlist = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_FAILEDCOMMANDLIST
    
    static var CopybufferregionNulldst = D3D12_MESSAGE_ID_COPYBUFFERREGION_NULLDST
    
    static var CopybufferregionInvaliddstresourcedimension = D3D12_MESSAGE_ID_COPYBUFFERREGION_INVALIDDSTRESOURCEDIMENSION
    
    static var CopybufferregionDstrangeoutofbounds = D3D12_MESSAGE_ID_COPYBUFFERREGION_DSTRANGEOUTOFBOUNDS
    
    static var CopybufferregionNullsrc = D3D12_MESSAGE_ID_COPYBUFFERREGION_NULLSRC
    
    static var CopybufferregionInvalidsrcresourcedimension = D3D12_MESSAGE_ID_COPYBUFFERREGION_INVALIDSRCRESOURCEDIMENSION
    
    static var CopybufferregionSrcrangeoutofbounds = D3D12_MESSAGE_ID_COPYBUFFERREGION_SRCRANGEOUTOFBOUNDS
    
    static var CopybufferregionInvalidcopyflags = D3D12_MESSAGE_ID_COPYBUFFERREGION_INVALIDCOPYFLAGS
    
    static var CopytextureregionNulldst = D3D12_MESSAGE_ID_COPYTEXTUREREGION_NULLDST
    
    static var CopytextureregionUnrecognizeddsttype = D3D12_MESSAGE_ID_COPYTEXTUREREGION_UNRECOGNIZEDDSTTYPE
    
    static var CopytextureregionInvaliddstresourcedimension = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTRESOURCEDIMENSION
    
    static var CopytextureregionInvaliddstresource = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTRESOURCE
    
    static var CopytextureregionInvaliddstsubresource = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTSUBRESOURCE
    
    static var CopytextureregionInvaliddstoffset = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTOFFSET
    
    static var CopytextureregionUnrecognizeddstformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_UNRECOGNIZEDDSTFORMAT
    
    static var CopytextureregionInvaliddstformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTFORMAT
    
    static var CopytextureregionInvaliddstdimensions = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTDIMENSIONS
    
    static var CopytextureregionInvaliddstrowpitch = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTROWPITCH
    
    static var CopytextureregionInvaliddstplacement = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTPLACEMENT
    
    static var CopytextureregionInvaliddstdsplacedfootprintformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTDSPLACEDFOOTPRINTFORMAT
    
    static var CopytextureregionDstregionoutofbounds = D3D12_MESSAGE_ID_COPYTEXTUREREGION_DSTREGIONOUTOFBOUNDS
    
    static var CopytextureregionNullsrc = D3D12_MESSAGE_ID_COPYTEXTUREREGION_NULLSRC
    
    static var CopytextureregionUnrecognizedsrctype = D3D12_MESSAGE_ID_COPYTEXTUREREGION_UNRECOGNIZEDSRCTYPE
    
    static var CopytextureregionInvalidsrcresourcedimension = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCRESOURCEDIMENSION
    
    static var CopytextureregionInvalidsrcresource = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCRESOURCE
    
    static var CopytextureregionInvalidsrcsubresource = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCSUBRESOURCE
    
    static var CopytextureregionInvalidsrcoffset = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCOFFSET
    
    static var CopytextureregionUnrecognizedsrcformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_UNRECOGNIZEDSRCFORMAT
    
    static var CopytextureregionInvalidsrcformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCFORMAT
    
    static var CopytextureregionInvalidsrcdimensions = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCDIMENSIONS
    
    static var CopytextureregionInvalidsrcrowpitch = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCROWPITCH
    
    static var CopytextureregionInvalidsrcplacement = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCPLACEMENT
    
    static var CopytextureregionInvalidsrcdsplacedfootprintformat = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCDSPLACEDFOOTPRINTFORMAT
    
    static var CopytextureregionSrcregionoutofbounds = D3D12_MESSAGE_ID_COPYTEXTUREREGION_SRCREGIONOUTOFBOUNDS
    
    static var CopytextureregionInvaliddstcoordinates = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDDSTCOORDINATES
    
    static var CopytextureregionInvalidsrcbox = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDSRCBOX
    
    static var CopytextureregionFormatmismatch = D3D12_MESSAGE_ID_COPYTEXTUREREGION_FORMATMISMATCH
    
    static var CopytextureregionEmptybox = D3D12_MESSAGE_ID_COPYTEXTUREREGION_EMPTYBOX
    
    static var CopytextureregionInvalidcopyflags = D3D12_MESSAGE_ID_COPYTEXTUREREGION_INVALIDCOPYFLAGS
    
    static var ResolvesubresourceInvalidSubresourceIndex = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_INVALID_SUBRESOURCE_INDEX
    
    static var ResolvesubresourceInvalidFormat = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_INVALID_FORMAT
    
    static var ResolvesubresourceResourceMismatch = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_RESOURCE_MISMATCH
    
    static var ResolvesubresourceInvalidSampleCount = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_INVALID_SAMPLE_COUNT
    
    static var CreatecomputepipelinestateInvalidShader = D3D12_MESSAGE_ID_CREATECOMPUTEPIPELINESTATE_INVALID_SHADER
    
    static var CreatecomputepipelinestateCsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATECOMPUTEPIPELINESTATE_CS_ROOT_SIGNATURE_MISMATCH
    
    static var CreatecomputepipelinestateMissingRootSignature = D3D12_MESSAGE_ID_CREATECOMPUTEPIPELINESTATE_MISSING_ROOT_SIGNATURE
    
    static var CreatepipelinestateInvalidcachedblob = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_INVALIDCACHEDBLOB
    
    static var CreatepipelinestateCachedblobadaptermismatch = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_CACHEDBLOBADAPTERMISMATCH
    
    static var CreatepipelinestateCachedblobdriverversionmismatch = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_CACHEDBLOBDRIVERVERSIONMISMATCH
    
    static var CreatepipelinestateCachedblobdescmismatch = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_CACHEDBLOBDESCMISMATCH
    
    static var CreatepipelinestateCachedblobignored = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_CACHEDBLOBIGNORED
    
    static var WritetosubresourceInvalidheap = D3D12_MESSAGE_ID_WRITETOSUBRESOURCE_INVALIDHEAP
    
    static var WritetosubresourceInvalidresource = D3D12_MESSAGE_ID_WRITETOSUBRESOURCE_INVALIDRESOURCE
    
    static var WritetosubresourceInvalidbox = D3D12_MESSAGE_ID_WRITETOSUBRESOURCE_INVALIDBOX
    
    static var WritetosubresourceInvalidsubresource = D3D12_MESSAGE_ID_WRITETOSUBRESOURCE_INVALIDSUBRESOURCE
    
    static var WritetosubresourceEmptybox = D3D12_MESSAGE_ID_WRITETOSUBRESOURCE_EMPTYBOX
    
    static var ReadfromsubresourceInvalidheap = D3D12_MESSAGE_ID_READFROMSUBRESOURCE_INVALIDHEAP
    
    static var ReadfromsubresourceInvalidresource = D3D12_MESSAGE_ID_READFROMSUBRESOURCE_INVALIDRESOURCE
    
    static var ReadfromsubresourceInvalidbox = D3D12_MESSAGE_ID_READFROMSUBRESOURCE_INVALIDBOX
    
    static var ReadfromsubresourceInvalidsubresource = D3D12_MESSAGE_ID_READFROMSUBRESOURCE_INVALIDSUBRESOURCE
    
    static var ReadfromsubresourceEmptybox = D3D12_MESSAGE_ID_READFROMSUBRESOURCE_EMPTYBOX
    
    static var TooManyNodesSpecified = D3D12_MESSAGE_ID_TOO_MANY_NODES_SPECIFIED
    
    static var InvalidNodeIndex = D3D12_MESSAGE_ID_INVALID_NODE_INDEX
    
    static var GetheappropertiesInvalidresource = D3D12_MESSAGE_ID_GETHEAPPROPERTIES_INVALIDRESOURCE
    
    static var NodeMaskMismatch = D3D12_MESSAGE_ID_NODE_MASK_MISMATCH
    
    static var CommandListOutofmemory = D3D12_MESSAGE_ID_COMMAND_LIST_OUTOFMEMORY
    
    static var CommandListMultipleSwapchainBufferReferences = D3D12_MESSAGE_ID_COMMAND_LIST_MULTIPLE_SWAPCHAIN_BUFFER_REFERENCES
    
    static var CommandListTooManySwapchainReferences = D3D12_MESSAGE_ID_COMMAND_LIST_TOO_MANY_SWAPCHAIN_REFERENCES
    
    static var CommandQueueTooManySwapchainReferences = D3D12_MESSAGE_ID_COMMAND_QUEUE_TOO_MANY_SWAPCHAIN_REFERENCES
    
    static var ExecutecommandlistsWrongswapchainbufferreference = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_WRONGSWAPCHAINBUFFERREFERENCE
    
    static var CommandListSetrendertargetsInvalidnumrendertargets = D3D12_MESSAGE_ID_COMMAND_LIST_SETRENDERTARGETS_INVALIDNUMRENDERTARGETS
    
    static var CreateQueueInvalidType = D3D12_MESSAGE_ID_CREATE_QUEUE_INVALID_TYPE
    
    static var CreateQueueInvalidFlags = D3D12_MESSAGE_ID_CREATE_QUEUE_INVALID_FLAGS
    
    static var CreatesharedresourceInvalidflags = D3D12_MESSAGE_ID_CREATESHAREDRESOURCE_INVALIDFLAGS
    
    static var CreatesharedresourceInvalidformat = D3D12_MESSAGE_ID_CREATESHAREDRESOURCE_INVALIDFORMAT
    
    static var CreatesharedheapInvalidflags = D3D12_MESSAGE_ID_CREATESHAREDHEAP_INVALIDFLAGS
    
    static var ReflectsharedpropertiesUnrecognizedproperties = D3D12_MESSAGE_ID_REFLECTSHAREDPROPERTIES_UNRECOGNIZEDPROPERTIES
    
    static var ReflectsharedpropertiesInvalidsize = D3D12_MESSAGE_ID_REFLECTSHAREDPROPERTIES_INVALIDSIZE
    
    static var ReflectsharedpropertiesInvalidobject = D3D12_MESSAGE_ID_REFLECTSHAREDPROPERTIES_INVALIDOBJECT
    
    static var KeyedmutexInvalidobject = D3D12_MESSAGE_ID_KEYEDMUTEX_INVALIDOBJECT
    
    static var KeyedmutexInvalidkey = D3D12_MESSAGE_ID_KEYEDMUTEX_INVALIDKEY
    
    static var KeyedmutexWrongstate = D3D12_MESSAGE_ID_KEYEDMUTEX_WRONGSTATE
    
    static var CreateQueueInvalidPriority = D3D12_MESSAGE_ID_CREATE_QUEUE_INVALID_PRIORITY
    
    static var ObjectDeletedWhileStillInUse = D3D12_MESSAGE_ID_OBJECT_DELETED_WHILE_STILL_IN_USE
    
    static var CreatepipelinestateInvalidFlags = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_INVALID_FLAGS
    
    static var HeapAddressRangeHasNoResource = D3D12_MESSAGE_ID_HEAP_ADDRESS_RANGE_HAS_NO_RESOURCE
    
    static var CommandListDrawRenderTargetDeleted = D3D12_MESSAGE_ID_COMMAND_LIST_DRAW_RENDER_TARGET_DELETED
    
    static var CreategraphicspipelinestateAllRenderTargetsHaveUnknownFormat = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_ALL_RENDER_TARGETS_HAVE_UNKNOWN_FORMAT
    
    static var HeapAddressRangeIntersectsMultipleBuffers = D3D12_MESSAGE_ID_HEAP_ADDRESS_RANGE_INTERSECTS_MULTIPLE_BUFFERS
    
    static var ExecutecommandlistsGpuWrittenReadbackResourceMapped = D3D12_MESSAGE_ID_EXECUTECOMMANDLISTS_GPU_WRITTEN_READBACK_RESOURCE_MAPPED
    
    static var UnmapRangeNotEmpty = D3D12_MESSAGE_ID_UNMAP_RANGE_NOT_EMPTY
    
    static var MapInvalidNullrange = D3D12_MESSAGE_ID_MAP_INVALID_NULLRANGE
    
    static var UnmapInvalidNullrange = D3D12_MESSAGE_ID_UNMAP_INVALID_NULLRANGE
    
    static var NoGraphicsApiSupport = D3D12_MESSAGE_ID_NO_GRAPHICS_API_SUPPORT
    
    static var NoComputeApiSupport = D3D12_MESSAGE_ID_NO_COMPUTE_API_SUPPORT
    
    static var ResolvesubresourceResourceFlagsNotSupported = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_RESOURCE_FLAGS_NOT_SUPPORTED
    
    static var GpuBasedValidationRootArgumentUninitialized = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_ROOT_ARGUMENT_UNINITIALIZED
    
    static var GpuBasedValidationDescriptorHeapIndexOutOfBounds = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_DESCRIPTOR_HEAP_INDEX_OUT_OF_BOUNDS
    
    static var GpuBasedValidationDescriptorTableRegisterIndexOutOfBounds = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_DESCRIPTOR_TABLE_REGISTER_INDEX_OUT_OF_BOUNDS
    
    static var GpuBasedValidationDescriptorUninitialized = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_DESCRIPTOR_UNINITIALIZED
    
    static var GpuBasedValidationDescriptorTypeMismatch = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_DESCRIPTOR_TYPE_MISMATCH
    
    static var GpuBasedValidationSrvResourceDimensionMismatch = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_SRV_RESOURCE_DIMENSION_MISMATCH
    
    static var GpuBasedValidationUavResourceDimensionMismatch = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_UAV_RESOURCE_DIMENSION_MISMATCH
    
    static var GpuBasedValidationIncompatibleResourceState = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_INCOMPATIBLE_RESOURCE_STATE
    
    static var CopyresourceNulldst = D3D12_MESSAGE_ID_COPYRESOURCE_NULLDST
    
    static var CopyresourceInvaliddstresource = D3D12_MESSAGE_ID_COPYRESOURCE_INVALIDDSTRESOURCE
    
    static var CopyresourceNullsrc = D3D12_MESSAGE_ID_COPYRESOURCE_NULLSRC
    
    static var CopyresourceInvalidsrcresource = D3D12_MESSAGE_ID_COPYRESOURCE_INVALIDSRCRESOURCE
    
    static var ResolvesubresourceNulldst = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_NULLDST
    
    static var ResolvesubresourceInvaliddstresource = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_INVALIDDSTRESOURCE
    
    static var ResolvesubresourceNullsrc = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_NULLSRC
    
    static var ResolvesubresourceInvalidsrcresource = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_INVALIDSRCRESOURCE
    
    static var PipelineStateTypeMismatch = D3D12_MESSAGE_ID_PIPELINE_STATE_TYPE_MISMATCH
    
    static var CommandListDispatchRootSignatureNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_DISPATCH_ROOT_SIGNATURE_NOT_SET
    
    static var CommandListDispatchRootSignatureMismatch = D3D12_MESSAGE_ID_COMMAND_LIST_DISPATCH_ROOT_SIGNATURE_MISMATCH
    
    static var ResourceBarrierZeroBarriers = D3D12_MESSAGE_ID_RESOURCE_BARRIER_ZERO_BARRIERS
    
    static var BeginEndEventMismatch = D3D12_MESSAGE_ID_BEGIN_END_EVENT_MISMATCH
    
    static var ResourceBarrierPossibleBeforeAfterMismatch = D3D12_MESSAGE_ID_RESOURCE_BARRIER_POSSIBLE_BEFORE_AFTER_MISMATCH
    
    static var ResourceBarrierMismatchingBeginEnd = D3D12_MESSAGE_ID_RESOURCE_BARRIER_MISMATCHING_BEGIN_END
    
    static var GpuBasedValidationInvalidResource = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_INVALID_RESOURCE
    
    static var UseOfZeroRefcountObject = D3D12_MESSAGE_ID_USE_OF_ZERO_REFCOUNT_OBJECT
    
    static var ObjectEvictedWhileStillInUse = D3D12_MESSAGE_ID_OBJECT_EVICTED_WHILE_STILL_IN_USE
    
    static var GpuBasedValidationRootDescriptorAccessOutOfBounds = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_ROOT_DESCRIPTOR_ACCESS_OUT_OF_BOUNDS
    
    static var CreatepipelinelibraryInvalidlibraryblob = D3D12_MESSAGE_ID_CREATEPIPELINELIBRARY_INVALIDLIBRARYBLOB
    
    static var CreatepipelinelibraryDriverversionmismatch = D3D12_MESSAGE_ID_CREATEPIPELINELIBRARY_DRIVERVERSIONMISMATCH
    
    static var CreatepipelinelibraryAdapterversionmismatch = D3D12_MESSAGE_ID_CREATEPIPELINELIBRARY_ADAPTERVERSIONMISMATCH
    
    static var CreatepipelinelibraryUnsupported = D3D12_MESSAGE_ID_CREATEPIPELINELIBRARY_UNSUPPORTED
    
    static var CreatePipelinelibrary = D3D12_MESSAGE_ID_CREATE_PIPELINELIBRARY
    
    static var LivePipelinelibrary = D3D12_MESSAGE_ID_LIVE_PIPELINELIBRARY
    
    static var DestroyPipelinelibrary = D3D12_MESSAGE_ID_DESTROY_PIPELINELIBRARY
    
    static var StorepipelineNoname = D3D12_MESSAGE_ID_STOREPIPELINE_NONAME
    
    static var StorepipelineDuplicatename = D3D12_MESSAGE_ID_STOREPIPELINE_DUPLICATENAME
    
    static var LoadpipelineNamenotfound = D3D12_MESSAGE_ID_LOADPIPELINE_NAMENOTFOUND
    
    static var LoadpipelineInvaliddesc = D3D12_MESSAGE_ID_LOADPIPELINE_INVALIDDESC
    
    static var PipelinelibrarySerializeNotenoughmemory = D3D12_MESSAGE_ID_PIPELINELIBRARY_SERIALIZE_NOTENOUGHMEMORY
    
    static var CreategraphicspipelinestatePsOutputRtOutputMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_PS_OUTPUT_RT_OUTPUT_MISMATCH
    
    static var SeteventonmultiplefencecompletionInvalidflags = D3D12_MESSAGE_ID_SETEVENTONMULTIPLEFENCECOMPLETION_INVALIDFLAGS
    
    static var CreateQueueVideoNotSupported = D3D12_MESSAGE_ID_CREATE_QUEUE_VIDEO_NOT_SUPPORTED
    
    static var CreateCommandAllocatorVideoNotSupported = D3D12_MESSAGE_ID_CREATE_COMMAND_ALLOCATOR_VIDEO_NOT_SUPPORTED
    
    static var CreatequeryHeapVideoDecodeStatisticsNotSupported = D3D12_MESSAGE_ID_CREATEQUERY_HEAP_VIDEO_DECODE_STATISTICS_NOT_SUPPORTED
    
    static var CreateVideodecodecommandlist = D3D12_MESSAGE_ID_CREATE_VIDEODECODECOMMANDLIST
    
    static var CreateVideodecoder = D3D12_MESSAGE_ID_CREATE_VIDEODECODER
    
    static var CreateVideodecodestream = D3D12_MESSAGE_ID_CREATE_VIDEODECODESTREAM
    
    static var LiveVideodecodecommandlist = D3D12_MESSAGE_ID_LIVE_VIDEODECODECOMMANDLIST
    
    static var LiveVideodecoder = D3D12_MESSAGE_ID_LIVE_VIDEODECODER
    
    static var LiveVideodecodestream = D3D12_MESSAGE_ID_LIVE_VIDEODECODESTREAM
    
    static var DestroyVideodecodecommandlist = D3D12_MESSAGE_ID_DESTROY_VIDEODECODECOMMANDLIST
    
    static var DestroyVideodecoder = D3D12_MESSAGE_ID_DESTROY_VIDEODECODER
    
    static var DestroyVideodecodestream = D3D12_MESSAGE_ID_DESTROY_VIDEODECODESTREAM
    
    static var DecodeFrameInvalidParameters = D3D12_MESSAGE_ID_DECODE_FRAME_INVALID_PARAMETERS
    
    static var DeprecatedApi = D3D12_MESSAGE_ID_DEPRECATED_API
    
    static var ResourceBarrierMismatchingCommandListType = D3D12_MESSAGE_ID_RESOURCE_BARRIER_MISMATCHING_COMMAND_LIST_TYPE
    
    static var CommandListDescriptorTableNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_DESCRIPTOR_TABLE_NOT_SET
    
    static var CommandListRootConstantBufferViewNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_ROOT_CONSTANT_BUFFER_VIEW_NOT_SET
    
    static var CommandListRootShaderResourceViewNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_ROOT_SHADER_RESOURCE_VIEW_NOT_SET
    
    static var CommandListRootUnorderedAccessViewNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_ROOT_UNORDERED_ACCESS_VIEW_NOT_SET
    
    static var DiscardInvalidSubresourceRange = D3D12_MESSAGE_ID_DISCARD_INVALID_SUBRESOURCE_RANGE
    
    static var DiscardOneSubresourceForMipsWithRects = D3D12_MESSAGE_ID_DISCARD_ONE_SUBRESOURCE_FOR_MIPS_WITH_RECTS
    
    static var DiscardNoRectsForNonTexture2d = D3D12_MESSAGE_ID_DISCARD_NO_RECTS_FOR_NON_TEXTURE2D
    
    static var CopyOnSameSubresource = D3D12_MESSAGE_ID_COPY_ON_SAME_SUBRESOURCE
    
    static var SetresidencypriorityInvalidPageable = D3D12_MESSAGE_ID_SETRESIDENCYPRIORITY_INVALID_PAGEABLE
    
    static var GpuBasedValidationUnsupported = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_UNSUPPORTED
    
    static var StaticDescriptorInvalidDescriptorChange = D3D12_MESSAGE_ID_STATIC_DESCRIPTOR_INVALID_DESCRIPTOR_CHANGE
    
    static var DataStaticDescriptorInvalidDataChange = D3D12_MESSAGE_ID_DATA_STATIC_DESCRIPTOR_INVALID_DATA_CHANGE
    
    static var DataStaticWhileSetAtExecuteDescriptorInvalidDataChange = D3D12_MESSAGE_ID_DATA_STATIC_WHILE_SET_AT_EXECUTE_DESCRIPTOR_INVALID_DATA_CHANGE
    
    static var ExecuteBundleStaticDescriptorDataStaticNotSet = D3D12_MESSAGE_ID_EXECUTE_BUNDLE_STATIC_DESCRIPTOR_DATA_STATIC_NOT_SET
    
    static var GpuBasedValidationResourceAccessOutOfBounds = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_RESOURCE_ACCESS_OUT_OF_BOUNDS
    
    static var GpuBasedValidationSamplerModeMismatch = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_SAMPLER_MODE_MISMATCH
    
    static var CreateFenceInvalidFlags = D3D12_MESSAGE_ID_CREATE_FENCE_INVALID_FLAGS
    
    static var ResourceBarrierDuplicateSubresourceTransitions = D3D12_MESSAGE_ID_RESOURCE_BARRIER_DUPLICATE_SUBRESOURCE_TRANSITIONS
    
    static var SetresidencypriorityInvalidPriority = D3D12_MESSAGE_ID_SETRESIDENCYPRIORITY_INVALID_PRIORITY
    
    static var CreateDescriptorHeapLargeNumDescriptors = D3D12_MESSAGE_ID_CREATE_DESCRIPTOR_HEAP_LARGE_NUM_DESCRIPTORS
    
    static var BeginEvent = D3D12_MESSAGE_ID_BEGIN_EVENT
    
    static var EndEvent = D3D12_MESSAGE_ID_END_EVENT
    
    static var CreatedeviceDebugLayerStartupOptions = D3D12_MESSAGE_ID_CREATEDEVICE_DEBUG_LAYER_STARTUP_OPTIONS
    
    static var CreatedepthstencilstateDepthboundstestUnsupported = D3D12_MESSAGE_ID_CREATEDEPTHSTENCILSTATE_DEPTHBOUNDSTEST_UNSUPPORTED
    
    static var CreatepipelinestateDuplicateSubobject = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_DUPLICATE_SUBOBJECT
    
    static var CreatepipelinestateUnknownSubobject = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_UNKNOWN_SUBOBJECT
    
    static var CreatepipelinestateZeroSizeStream = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_ZERO_SIZE_STREAM
    
    static var CreatepipelinestateInvalidStream = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_INVALID_STREAM
    
    static var CreatepipelinestateCannotDeduceType = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_CANNOT_DEDUCE_TYPE
    
    static var CommandListStaticDescriptorResourceDimensionMismatch = D3D12_MESSAGE_ID_COMMAND_LIST_STATIC_DESCRIPTOR_RESOURCE_DIMENSION_MISMATCH
    
    static var CreateCommandQueueInsufficientPrivilegeForGlobalRealtime = D3D12_MESSAGE_ID_CREATE_COMMAND_QUEUE_INSUFFICIENT_PRIVILEGE_FOR_GLOBAL_REALTIME
    
    static var CreateCommandQueueInsufficientHardwareSupportForGlobalRealtime = D3D12_MESSAGE_ID_CREATE_COMMAND_QUEUE_INSUFFICIENT_HARDWARE_SUPPORT_FOR_GLOBAL_REALTIME
    
    static var AtomiccopybufferInvalidArchitecture = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_ARCHITECTURE
    
    static var AtomiccopybufferNullDst = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_NULL_DST
    
    static var AtomiccopybufferInvalidDstResourceDimension = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_DST_RESOURCE_DIMENSION
    
    static var AtomiccopybufferDstRangeOutOfBounds = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_DST_RANGE_OUT_OF_BOUNDS
    
    static var AtomiccopybufferNullSrc = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_NULL_SRC
    
    static var AtomiccopybufferInvalidSrcResourceDimension = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_SRC_RESOURCE_DIMENSION
    
    static var AtomiccopybufferSrcRangeOutOfBounds = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_SRC_RANGE_OUT_OF_BOUNDS
    
    static var AtomiccopybufferInvalidOffsetAlignment = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_OFFSET_ALIGNMENT
    
    static var AtomiccopybufferNullDependentResources = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_NULL_DEPENDENT_RESOURCES
    
    static var AtomiccopybufferNullDependentSubresourceRanges = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_NULL_DEPENDENT_SUBRESOURCE_RANGES
    
    static var AtomiccopybufferInvalidDependentResource = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_DEPENDENT_RESOURCE
    
    static var AtomiccopybufferInvalidDependentSubresourceRange = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_DEPENDENT_SUBRESOURCE_RANGE
    
    static var AtomiccopybufferDependentSubresourceOutOfBounds = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_DEPENDENT_SUBRESOURCE_OUT_OF_BOUNDS
    
    static var AtomiccopybufferDependentRangeOutOfBounds = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_DEPENDENT_RANGE_OUT_OF_BOUNDS
    
    static var AtomiccopybufferZeroDependencies = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_ZERO_DEPENDENCIES
    
    static var DeviceCreateSharedHandleInvalidarg = D3D12_MESSAGE_ID_DEVICE_CREATE_SHARED_HANDLE_INVALIDARG
    
    static var DescriptorHandleWithInvalidResource = D3D12_MESSAGE_ID_DESCRIPTOR_HANDLE_WITH_INVALID_RESOURCE
    
    static var SetdepthboundsInvalidargs = D3D12_MESSAGE_ID_SETDEPTHBOUNDS_INVALIDARGS
    
    static var GpuBasedValidationResourceStateImprecise = D3D12_MESSAGE_ID_GPU_BASED_VALIDATION_RESOURCE_STATE_IMPRECISE
    
    static var CommandListPipelineStateNotSet = D3D12_MESSAGE_ID_COMMAND_LIST_PIPELINE_STATE_NOT_SET
    
    static var CreategraphicspipelinestateShaderModelMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_SHADER_MODEL_MISMATCH
    
    static var ObjectAccessedWhileStillInUse = D3D12_MESSAGE_ID_OBJECT_ACCESSED_WHILE_STILL_IN_USE
    
    static var ProgrammableMsaaUnsupported = D3D12_MESSAGE_ID_PROGRAMMABLE_MSAA_UNSUPPORTED
    
    static var SetsamplepositionsInvalidargs = D3D12_MESSAGE_ID_SETSAMPLEPOSITIONS_INVALIDARGS
    
    static var ResolvesubresourceregionInvalidRect = D3D12_MESSAGE_ID_RESOLVESUBRESOURCEREGION_INVALID_RECT
    
    static var CreateVideodecodecommandqueue = D3D12_MESSAGE_ID_CREATE_VIDEODECODECOMMANDQUEUE
    
    static var CreateVideoprocesscommandlist = D3D12_MESSAGE_ID_CREATE_VIDEOPROCESSCOMMANDLIST
    
    static var CreateVideoprocesscommandqueue = D3D12_MESSAGE_ID_CREATE_VIDEOPROCESSCOMMANDQUEUE
    
    static var LiveVideodecodecommandqueue = D3D12_MESSAGE_ID_LIVE_VIDEODECODECOMMANDQUEUE
    
    static var LiveVideoprocesscommandlist = D3D12_MESSAGE_ID_LIVE_VIDEOPROCESSCOMMANDLIST
    
    static var LiveVideoprocesscommandqueue = D3D12_MESSAGE_ID_LIVE_VIDEOPROCESSCOMMANDQUEUE
    
    static var DestroyVideodecodecommandqueue = D3D12_MESSAGE_ID_DESTROY_VIDEODECODECOMMANDQUEUE
    
    static var DestroyVideoprocesscommandlist = D3D12_MESSAGE_ID_DESTROY_VIDEOPROCESSCOMMANDLIST
    
    static var DestroyVideoprocesscommandqueue = D3D12_MESSAGE_ID_DESTROY_VIDEOPROCESSCOMMANDQUEUE
    
    static var CreateVideoprocessor = D3D12_MESSAGE_ID_CREATE_VIDEOPROCESSOR
    
    static var CreateVideoprocessstream = D3D12_MESSAGE_ID_CREATE_VIDEOPROCESSSTREAM
    
    static var LiveVideoprocessor = D3D12_MESSAGE_ID_LIVE_VIDEOPROCESSOR
    
    static var LiveVideoprocessstream = D3D12_MESSAGE_ID_LIVE_VIDEOPROCESSSTREAM
    
    static var DestroyVideoprocessor = D3D12_MESSAGE_ID_DESTROY_VIDEOPROCESSOR
    
    static var DestroyVideoprocessstream = D3D12_MESSAGE_ID_DESTROY_VIDEOPROCESSSTREAM
    
    static var ProcessFrameInvalidParameters = D3D12_MESSAGE_ID_PROCESS_FRAME_INVALID_PARAMETERS
    
    static var CopyInvalidlayout = D3D12_MESSAGE_ID_COPY_INVALIDLAYOUT
    
    static var CreateCryptoSession = D3D12_MESSAGE_ID_CREATE_CRYPTO_SESSION
    
    static var CreateCryptoSessionPolicy = D3D12_MESSAGE_ID_CREATE_CRYPTO_SESSION_POLICY
    
    static var CreateProtectedResourceSession = D3D12_MESSAGE_ID_CREATE_PROTECTED_RESOURCE_SESSION
    
    static var LiveCryptoSession = D3D12_MESSAGE_ID_LIVE_CRYPTO_SESSION
    
    static var LiveCryptoSessionPolicy = D3D12_MESSAGE_ID_LIVE_CRYPTO_SESSION_POLICY
    
    static var LiveProtectedResourceSession = D3D12_MESSAGE_ID_LIVE_PROTECTED_RESOURCE_SESSION
    
    static var DestroyCryptoSession = D3D12_MESSAGE_ID_DESTROY_CRYPTO_SESSION
    
    static var DestroyCryptoSessionPolicy = D3D12_MESSAGE_ID_DESTROY_CRYPTO_SESSION_POLICY
    
    static var DestroyProtectedResourceSession = D3D12_MESSAGE_ID_DESTROY_PROTECTED_RESOURCE_SESSION
    
    static var ProtectedResourceSessionUnsupported = D3D12_MESSAGE_ID_PROTECTED_RESOURCE_SESSION_UNSUPPORTED
    
    static var FenceInvalidoperation = D3D12_MESSAGE_ID_FENCE_INVALIDOPERATION
    
    static var CreatequeryHeapCopyQueueTimestampsNotSupported = D3D12_MESSAGE_ID_CREATEQUERY_HEAP_COPY_QUEUE_TIMESTAMPS_NOT_SUPPORTED
    
    static var SamplepositionsMismatchDeferred = D3D12_MESSAGE_ID_SAMPLEPOSITIONS_MISMATCH_DEFERRED
    
    static var SamplepositionsMismatchRecordtimeAssumedfromfirstuse = D3D12_MESSAGE_ID_SAMPLEPOSITIONS_MISMATCH_RECORDTIME_ASSUMEDFROMFIRSTUSE
    
    static var SamplepositionsMismatchRecordtimeAssumedfromclear = D3D12_MESSAGE_ID_SAMPLEPOSITIONS_MISMATCH_RECORDTIME_ASSUMEDFROMCLEAR
    
    static var CreateVideodecoderheap = D3D12_MESSAGE_ID_CREATE_VIDEODECODERHEAP
    
    static var LiveVideodecoderheap = D3D12_MESSAGE_ID_LIVE_VIDEODECODERHEAP
    
    static var DestroyVideodecoderheap = D3D12_MESSAGE_ID_DESTROY_VIDEODECODERHEAP
    
    static var OpenexistingheapInvalidargReturn = D3D12_MESSAGE_ID_OPENEXISTINGHEAP_INVALIDARG_RETURN
    
    static var OpenexistingheapOutofmemoryReturn = D3D12_MESSAGE_ID_OPENEXISTINGHEAP_OUTOFMEMORY_RETURN
    
    static var OpenexistingheapInvalidaddress = D3D12_MESSAGE_ID_OPENEXISTINGHEAP_INVALIDADDRESS
    
    static var OpenexistingheapInvalidhandle = D3D12_MESSAGE_ID_OPENEXISTINGHEAP_INVALIDHANDLE
    
    static var WritebufferimmediateInvalidDest = D3D12_MESSAGE_ID_WRITEBUFFERIMMEDIATE_INVALID_DEST
    
    static var WritebufferimmediateInvalidMode = D3D12_MESSAGE_ID_WRITEBUFFERIMMEDIATE_INVALID_MODE
    
    static var WritebufferimmediateInvalidAlignment = D3D12_MESSAGE_ID_WRITEBUFFERIMMEDIATE_INVALID_ALIGNMENT
    
    static var WritebufferimmediateNotSupported = D3D12_MESSAGE_ID_WRITEBUFFERIMMEDIATE_NOT_SUPPORTED
    
    static var SetviewinstancemaskInvalidargs = D3D12_MESSAGE_ID_SETVIEWINSTANCEMASK_INVALIDARGS
    
    static var ViewInstancingUnsupported = D3D12_MESSAGE_ID_VIEW_INSTANCING_UNSUPPORTED
    
    static var ViewInstancingInvalidargs = D3D12_MESSAGE_ID_VIEW_INSTANCING_INVALIDARGS
    
    static var CopytextureregionMismatchDecodeReferenceOnlyFlag = D3D12_MESSAGE_ID_COPYTEXTUREREGION_MISMATCH_DECODE_REFERENCE_ONLY_FLAG
    
    static var CopyresourceMismatchDecodeReferenceOnlyFlag = D3D12_MESSAGE_ID_COPYRESOURCE_MISMATCH_DECODE_REFERENCE_ONLY_FLAG
    
    static var CreateVideoDecodeHeapCapsFailure = D3D12_MESSAGE_ID_CREATE_VIDEO_DECODE_HEAP_CAPS_FAILURE
    
    static var CreateVideoDecodeHeapCapsUnsupported = D3D12_MESSAGE_ID_CREATE_VIDEO_DECODE_HEAP_CAPS_UNSUPPORTED
    
    static var VideoDecodeSupportInvalidInput = D3D12_MESSAGE_ID_VIDEO_DECODE_SUPPORT_INVALID_INPUT
    
    static var CreateVideoDecoderUnsupported = D3D12_MESSAGE_ID_CREATE_VIDEO_DECODER_UNSUPPORTED
    
    static var CreategraphicspipelinestateMetadataError = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_METADATA_ERROR
    
    static var CreategraphicspipelinestateViewInstancingVertexSizeExceeded = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_VIEW_INSTANCING_VERTEX_SIZE_EXCEEDED
    
    static var CreategraphicspipelinestateRuntimeInternalError = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_RUNTIME_INTERNAL_ERROR
    
    static var NoVideoApiSupport = D3D12_MESSAGE_ID_NO_VIDEO_API_SUPPORT
    
    static var VideoProcessSupportInvalidInput = D3D12_MESSAGE_ID_VIDEO_PROCESS_SUPPORT_INVALID_INPUT
    
    static var CreateVideoProcessorCapsFailure = D3D12_MESSAGE_ID_CREATE_VIDEO_PROCESSOR_CAPS_FAILURE
    
    static var VideoProcessSupportUnsupportedFormat = D3D12_MESSAGE_ID_VIDEO_PROCESS_SUPPORT_UNSUPPORTED_FORMAT
    
    static var VideoDecodeFrameInvalidArgument = D3D12_MESSAGE_ID_VIDEO_DECODE_FRAME_INVALID_ARGUMENT
    
    static var EnqueueMakeResidentInvalidFlags = D3D12_MESSAGE_ID_ENQUEUE_MAKE_RESIDENT_INVALID_FLAGS
    
    static var OpenexistingheapUnsupported = D3D12_MESSAGE_ID_OPENEXISTINGHEAP_UNSUPPORTED
    
    static var VideoProcessFramesInvalidArgument = D3D12_MESSAGE_ID_VIDEO_PROCESS_FRAMES_INVALID_ARGUMENT
    
    static var VideoDecodeSupportUnsupported = D3D12_MESSAGE_ID_VIDEO_DECODE_SUPPORT_UNSUPPORTED
    
    static var CreateCommandrecorder = D3D12_MESSAGE_ID_CREATE_COMMANDRECORDER
    
    static var LiveCommandrecorder = D3D12_MESSAGE_ID_LIVE_COMMANDRECORDER
    
    static var DestroyCommandrecorder = D3D12_MESSAGE_ID_DESTROY_COMMANDRECORDER
    
    static var CreateCommandRecorderVideoNotSupported = D3D12_MESSAGE_ID_CREATE_COMMAND_RECORDER_VIDEO_NOT_SUPPORTED
    
    static var CreateCommandRecorderInvalidSupportFlags = D3D12_MESSAGE_ID_CREATE_COMMAND_RECORDER_INVALID_SUPPORT_FLAGS
    
    static var CreateCommandRecorderInvalidFlags = D3D12_MESSAGE_ID_CREATE_COMMAND_RECORDER_INVALID_FLAGS
    
    static var CreateCommandRecorderMoreRecordersThanLogicalProcessors = D3D12_MESSAGE_ID_CREATE_COMMAND_RECORDER_MORE_RECORDERS_THAN_LOGICAL_PROCESSORS
    
    static var CreateCommandpool = D3D12_MESSAGE_ID_CREATE_COMMANDPOOL
    
    static var LiveCommandpool = D3D12_MESSAGE_ID_LIVE_COMMANDPOOL
    
    static var DestroyCommandpool = D3D12_MESSAGE_ID_DESTROY_COMMANDPOOL
    
    static var CreateCommandPoolInvalidFlags = D3D12_MESSAGE_ID_CREATE_COMMAND_POOL_INVALID_FLAGS
    
    static var CreateCommandListVideoNotSupported = D3D12_MESSAGE_ID_CREATE_COMMAND_LIST_VIDEO_NOT_SUPPORTED
    
    static var CommandRecorderSupportFlagsMismatch = D3D12_MESSAGE_ID_COMMAND_RECORDER_SUPPORT_FLAGS_MISMATCH
    
    static var CommandRecorderContention = D3D12_MESSAGE_ID_COMMAND_RECORDER_CONTENTION
    
    static var CommandRecorderUsageWithCreatecommandlistCommandList = D3D12_MESSAGE_ID_COMMAND_RECORDER_USAGE_WITH_CREATECOMMANDLIST_COMMAND_LIST
    
    static var CommandAllocatorUsageWithCreatecommandlist1CommandList = D3D12_MESSAGE_ID_COMMAND_ALLOCATOR_USAGE_WITH_CREATECOMMANDLIST1_COMMAND_LIST
    
    static var CannotExecuteEmptyCommandList = D3D12_MESSAGE_ID_CANNOT_EXECUTE_EMPTY_COMMAND_LIST
    
    static var CannotResetCommandPoolWithOpenCommandLists = D3D12_MESSAGE_ID_CANNOT_RESET_COMMAND_POOL_WITH_OPEN_COMMAND_LISTS
    
    static var CannotUseCommandRecorderWithoutCurrentTarget = D3D12_MESSAGE_ID_CANNOT_USE_COMMAND_RECORDER_WITHOUT_CURRENT_TARGET
    
    static var CannotChangeCommandRecorderTargetWhileRecording = D3D12_MESSAGE_ID_CANNOT_CHANGE_COMMAND_RECORDER_TARGET_WHILE_RECORDING
    
    static var CommandPoolSync = D3D12_MESSAGE_ID_COMMAND_POOL_SYNC
    
    static var EvictUnderflow = D3D12_MESSAGE_ID_EVICT_UNDERFLOW
    
    static var CreateMetaCommand = D3D12_MESSAGE_ID_CREATE_META_COMMAND
    
    static var LiveMetaCommand = D3D12_MESSAGE_ID_LIVE_META_COMMAND
    
    static var DestroyMetaCommand = D3D12_MESSAGE_ID_DESTROY_META_COMMAND
    
    static var CopybufferregionInvalidDstResource = D3D12_MESSAGE_ID_COPYBUFFERREGION_INVALID_DST_RESOURCE
    
    static var CopybufferregionInvalidSrcResource = D3D12_MESSAGE_ID_COPYBUFFERREGION_INVALID_SRC_RESOURCE
    
    static var AtomiccopybufferInvalidDstResource = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_DST_RESOURCE
    
    static var AtomiccopybufferInvalidSrcResource = D3D12_MESSAGE_ID_ATOMICCOPYBUFFER_INVALID_SRC_RESOURCE
    
    static var CreateplacedresourceonbufferNullBuffer = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_NULL_BUFFER
    
    static var CreateplacedresourceonbufferNullResourceDesc = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_NULL_RESOURCE_DESC
    
    static var CreateplacedresourceonbufferUnsupported = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_UNSUPPORTED
    
    static var CreateplacedresourceonbufferInvalidBufferDimension = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_INVALID_BUFFER_DIMENSION
    
    static var CreateplacedresourceonbufferInvalidBufferFlags = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_INVALID_BUFFER_FLAGS
    
    static var CreateplacedresourceonbufferInvalidBufferOffset = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_INVALID_BUFFER_OFFSET
    
    static var CreateplacedresourceonbufferInvalidResourceDimension = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_INVALID_RESOURCE_DIMENSION
    
    static var CreateplacedresourceonbufferInvalidResourceFlags = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_INVALID_RESOURCE_FLAGS
    
    static var CreateplacedresourceonbufferOutofmemoryReturn = D3D12_MESSAGE_ID_CREATEPLACEDRESOURCEONBUFFER_OUTOFMEMORY_RETURN
    
    static var CannotCreateGraphicsAndVideoCommandRecorder = D3D12_MESSAGE_ID_CANNOT_CREATE_GRAPHICS_AND_VIDEO_COMMAND_RECORDER
    
    static var UpdatetilemappingsPossiblyMismatchingProperties = D3D12_MESSAGE_ID_UPDATETILEMAPPINGS_POSSIBLY_MISMATCHING_PROPERTIES
    
    static var CreateCommandListInvalidCommandListType = D3D12_MESSAGE_ID_CREATE_COMMAND_LIST_INVALID_COMMAND_LIST_TYPE
    
    static var ClearunorderedaccessviewIncompatibleWithStructuredBuffers = D3D12_MESSAGE_ID_CLEARUNORDEREDACCESSVIEW_INCOMPATIBLE_WITH_STRUCTURED_BUFFERS
    
    static var ComputeOnlyDeviceOperationUnsupported = D3D12_MESSAGE_ID_COMPUTE_ONLY_DEVICE_OPERATION_UNSUPPORTED
    
    static var BuildRaytracingAccelerationStructureInvalid = D3D12_MESSAGE_ID_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_INVALID
    
    static var EmitRaytracingAccelerationStructurePostbuildInfoInvalid = D3D12_MESSAGE_ID_EMIT_RAYTRACING_ACCELERATION_STRUCTURE_POSTBUILD_INFO_INVALID
    
    static var CopyRaytracingAccelerationStructureInvalid = D3D12_MESSAGE_ID_COPY_RAYTRACING_ACCELERATION_STRUCTURE_INVALID
    
    static var DispatchRaysInvalid = D3D12_MESSAGE_ID_DISPATCH_RAYS_INVALID
    
    static var GetRaytracingAccelerationStructurePrebuildInfoInvalid = D3D12_MESSAGE_ID_GET_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO_INVALID
    
    static var CreateLifetimetracker = D3D12_MESSAGE_ID_CREATE_LIFETIMETRACKER
    
    static var LiveLifetimetracker = D3D12_MESSAGE_ID_LIVE_LIFETIMETRACKER
    
    static var DestroyLifetimetracker = D3D12_MESSAGE_ID_DESTROY_LIFETIMETRACKER
    
    static var DestroyownedobjectObjectnotowned = D3D12_MESSAGE_ID_DESTROYOWNEDOBJECT_OBJECTNOTOWNED
    
    static var CreateTrackedworkload = D3D12_MESSAGE_ID_CREATE_TRACKEDWORKLOAD
    
    static var LiveTrackedworkload = D3D12_MESSAGE_ID_LIVE_TRACKEDWORKLOAD
    
    static var DestroyTrackedworkload = D3D12_MESSAGE_ID_DESTROY_TRACKEDWORKLOAD
    
    static var RenderPassError = D3D12_MESSAGE_ID_RENDER_PASS_ERROR
    
    static var MetaCommandIdInvalid = D3D12_MESSAGE_ID_META_COMMAND_ID_INVALID
    
    static var MetaCommandUnsupportedParams = D3D12_MESSAGE_ID_META_COMMAND_UNSUPPORTED_PARAMS
    
    static var MetaCommandFailedEnumeration = D3D12_MESSAGE_ID_META_COMMAND_FAILED_ENUMERATION
    
    static var MetaCommandParameterSizeMismatch = D3D12_MESSAGE_ID_META_COMMAND_PARAMETER_SIZE_MISMATCH
    
    static var UninitializedMetaCommand = D3D12_MESSAGE_ID_UNINITIALIZED_META_COMMAND
    
    static var MetaCommandInvalidGpuVirtualAddress = D3D12_MESSAGE_ID_META_COMMAND_INVALID_GPU_VIRTUAL_ADDRESS
    
    static var CreateVideoencodecommandlist = D3D12_MESSAGE_ID_CREATE_VIDEOENCODECOMMANDLIST
    
    static var LiveVideoencodecommandlist = D3D12_MESSAGE_ID_LIVE_VIDEOENCODECOMMANDLIST
    
    static var DestroyVideoencodecommandlist = D3D12_MESSAGE_ID_DESTROY_VIDEOENCODECOMMANDLIST
    
    static var CreateVideoencodecommandqueue = D3D12_MESSAGE_ID_CREATE_VIDEOENCODECOMMANDQUEUE
    
    static var LiveVideoencodecommandqueue = D3D12_MESSAGE_ID_LIVE_VIDEOENCODECOMMANDQUEUE
    
    static var DestroyVideoencodecommandqueue = D3D12_MESSAGE_ID_DESTROY_VIDEOENCODECOMMANDQUEUE
    
    static var CreateVideomotionestimator = D3D12_MESSAGE_ID_CREATE_VIDEOMOTIONESTIMATOR
    
    static var LiveVideomotionestimator = D3D12_MESSAGE_ID_LIVE_VIDEOMOTIONESTIMATOR
    
    static var DestroyVideomotionestimator = D3D12_MESSAGE_ID_DESTROY_VIDEOMOTIONESTIMATOR
    
    static var CreateVideomotionvectorheap = D3D12_MESSAGE_ID_CREATE_VIDEOMOTIONVECTORHEAP
    
    static var LiveVideomotionvectorheap = D3D12_MESSAGE_ID_LIVE_VIDEOMOTIONVECTORHEAP
    
    static var DestroyVideomotionvectorheap = D3D12_MESSAGE_ID_DESTROY_VIDEOMOTIONVECTORHEAP
    
    static var MultipleTrackedWorkloads = D3D12_MESSAGE_ID_MULTIPLE_TRACKED_WORKLOADS
    
    static var MultipleTrackedWorkloadPairs = D3D12_MESSAGE_ID_MULTIPLE_TRACKED_WORKLOAD_PAIRS
    
    static var OutOfOrderTrackedWorkloadPair = D3D12_MESSAGE_ID_OUT_OF_ORDER_TRACKED_WORKLOAD_PAIR
    
    static var CannotAddTrackedWorkload = D3D12_MESSAGE_ID_CANNOT_ADD_TRACKED_WORKLOAD
    
    static var IncompleteTrackedWorkloadPair = D3D12_MESSAGE_ID_INCOMPLETE_TRACKED_WORKLOAD_PAIR
    
    static var CreateStateObjectError = D3D12_MESSAGE_ID_CREATE_STATE_OBJECT_ERROR
    
    static var GetShaderIdentifierError = D3D12_MESSAGE_ID_GET_SHADER_IDENTIFIER_ERROR
    
    static var GetShaderStackSizeError = D3D12_MESSAGE_ID_GET_SHADER_STACK_SIZE_ERROR
    
    static var GetPipelineStackSizeError = D3D12_MESSAGE_ID_GET_PIPELINE_STACK_SIZE_ERROR
    
    static var SetPipelineStackSizeError = D3D12_MESSAGE_ID_SET_PIPELINE_STACK_SIZE_ERROR
    
    static var GetShaderIdentifierSizeInvalid = D3D12_MESSAGE_ID_GET_SHADER_IDENTIFIER_SIZE_INVALID
    
    static var CheckDriverMatchingIdentifierInvalid = D3D12_MESSAGE_ID_CHECK_DRIVER_MATCHING_IDENTIFIER_INVALID
    
    static var CheckDriverMatchingIdentifierDriverReportedIssue = D3D12_MESSAGE_ID_CHECK_DRIVER_MATCHING_IDENTIFIER_DRIVER_REPORTED_ISSUE
    
    static var RenderPassInvalidResourceBarrier = D3D12_MESSAGE_ID_RENDER_PASS_INVALID_RESOURCE_BARRIER
    
    static var RenderPassDisallowedApiCalled = D3D12_MESSAGE_ID_RENDER_PASS_DISALLOWED_API_CALLED
    
    static var RenderPassCannotNestRenderPasses = D3D12_MESSAGE_ID_RENDER_PASS_CANNOT_NEST_RENDER_PASSES
    
    static var RenderPassCannotEndWithoutBegin = D3D12_MESSAGE_ID_RENDER_PASS_CANNOT_END_WITHOUT_BEGIN
    
    static var RenderPassCannotCloseCommandList = D3D12_MESSAGE_ID_RENDER_PASS_CANNOT_CLOSE_COMMAND_LIST
    
    static var RenderPassGpuWorkWhileSuspended = D3D12_MESSAGE_ID_RENDER_PASS_GPU_WORK_WHILE_SUSPENDED
    
    static var RenderPassMismatchingSuspendResume = D3D12_MESSAGE_ID_RENDER_PASS_MISMATCHING_SUSPEND_RESUME
    
    static var RenderPassNoPriorSuspendWithinExecutecommandlists = D3D12_MESSAGE_ID_RENDER_PASS_NO_PRIOR_SUSPEND_WITHIN_EXECUTECOMMANDLISTS
    
    static var RenderPassNoSubsequentResumeWithinExecutecommandlists = D3D12_MESSAGE_ID_RENDER_PASS_NO_SUBSEQUENT_RESUME_WITHIN_EXECUTECOMMANDLISTS
    
    static var TrackedWorkloadCommandQueueMismatch = D3D12_MESSAGE_ID_TRACKED_WORKLOAD_COMMAND_QUEUE_MISMATCH
    
    static var TrackedWorkloadNotSupported = D3D12_MESSAGE_ID_TRACKED_WORKLOAD_NOT_SUPPORTED
    
    static var RenderPassMismatchingNoAccess = D3D12_MESSAGE_ID_RENDER_PASS_MISMATCHING_NO_ACCESS
    
    static var RenderPassUnsupportedResolve = D3D12_MESSAGE_ID_RENDER_PASS_UNSUPPORTED_RESOLVE
    
    static var ClearunorderedaccessviewInvalidResourcePtr = D3D12_MESSAGE_ID_CLEARUNORDEREDACCESSVIEW_INVALID_RESOURCE_PTR
    
    static var Windows7FenceOutoforderSignal = D3D12_MESSAGE_ID_WINDOWS7_FENCE_OUTOFORDER_SIGNAL
    
    static var Windows7FenceOutoforderWait = D3D12_MESSAGE_ID_WINDOWS7_FENCE_OUTOFORDER_WAIT
    
    static var VideoCreateMotionEstimatorInvalidArgument = D3D12_MESSAGE_ID_VIDEO_CREATE_MOTION_ESTIMATOR_INVALID_ARGUMENT
    
    static var VideoCreateMotionVectorHeapInvalidArgument = D3D12_MESSAGE_ID_VIDEO_CREATE_MOTION_VECTOR_HEAP_INVALID_ARGUMENT
    
    static var EstimateMotionInvalidArgument = D3D12_MESSAGE_ID_ESTIMATE_MOTION_INVALID_ARGUMENT
    
    static var ResolveMotionVectorHeapInvalidArgument = D3D12_MESSAGE_ID_RESOLVE_MOTION_VECTOR_HEAP_INVALID_ARGUMENT
    
    static var GetgpuvirtualaddressInvalidHeapType = D3D12_MESSAGE_ID_GETGPUVIRTUALADDRESS_INVALID_HEAP_TYPE
    
    static var SetBackgroundProcessingModeInvalidArgument = D3D12_MESSAGE_ID_SET_BACKGROUND_PROCESSING_MODE_INVALID_ARGUMENT
    
    static var CreateCommandListInvalidCommandListTypeForFeatureLevel = D3D12_MESSAGE_ID_CREATE_COMMAND_LIST_INVALID_COMMAND_LIST_TYPE_FOR_FEATURE_LEVEL
    
    static var CreateVideoextensioncommand = D3D12_MESSAGE_ID_CREATE_VIDEOEXTENSIONCOMMAND
    
    static var LiveVideoextensioncommand = D3D12_MESSAGE_ID_LIVE_VIDEOEXTENSIONCOMMAND
    
    static var DestroyVideoextensioncommand = D3D12_MESSAGE_ID_DESTROY_VIDEOEXTENSIONCOMMAND
    
    static var InvalidVideoExtensionCommandId = D3D12_MESSAGE_ID_INVALID_VIDEO_EXTENSION_COMMAND_ID
    
    static var VideoExtensionCommandInvalidArgument = D3D12_MESSAGE_ID_VIDEO_EXTENSION_COMMAND_INVALID_ARGUMENT
    
    static var CreateRootSignatureNotUniqueInDxilLibrary = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_NOT_UNIQUE_IN_DXIL_LIBRARY
    
    static var VariableShadingRateNotAllowedWithTir = D3D12_MESSAGE_ID_VARIABLE_SHADING_RATE_NOT_ALLOWED_WITH_TIR
    
    static var GeometryShaderOutputtingBothViewportArrayIndexAndShadingRateNotSupportedOnDevice = D3D12_MESSAGE_ID_GEOMETRY_SHADER_OUTPUTTING_BOTH_VIEWPORT_ARRAY_INDEX_AND_SHADING_RATE_NOT_SUPPORTED_ON_DEVICE
    
    static var RssetshadingRateInvalidShadingRate = D3D12_MESSAGE_ID_RSSETSHADING_RATE_INVALID_SHADING_RATE
    
    static var RssetshadingRateShadingRateNotPermittedByCap = D3D12_MESSAGE_ID_RSSETSHADING_RATE_SHADING_RATE_NOT_PERMITTED_BY_CAP
    
    static var RssetshadingRateInvalidCombiner = D3D12_MESSAGE_ID_RSSETSHADING_RATE_INVALID_COMBINER
    
    static var RssetshadingrateimageRequiresTier2 = D3D12_MESSAGE_ID_RSSETSHADINGRATEIMAGE_REQUIRES_TIER_2
    
    static var RssetshadingrateRequiresTier1 = D3D12_MESSAGE_ID_RSSETSHADINGRATE_REQUIRES_TIER_1
    
    static var ShadingRateImageIncorrectFormat = D3D12_MESSAGE_ID_SHADING_RATE_IMAGE_INCORRECT_FORMAT
    
    static var ShadingRateImageIncorrectArraySize = D3D12_MESSAGE_ID_SHADING_RATE_IMAGE_INCORRECT_ARRAY_SIZE
    
    static var ShadingRateImageIncorrectMipLevel = D3D12_MESSAGE_ID_SHADING_RATE_IMAGE_INCORRECT_MIP_LEVEL
    
    static var ShadingRateImageIncorrectSampleCount = D3D12_MESSAGE_ID_SHADING_RATE_IMAGE_INCORRECT_SAMPLE_COUNT
    
    static var ShadingRateImageIncorrectSampleQuality = D3D12_MESSAGE_ID_SHADING_RATE_IMAGE_INCORRECT_SAMPLE_QUALITY
    
    static var NonRetailShaderModelWontValidate = D3D12_MESSAGE_ID_NON_RETAIL_SHADER_MODEL_WONT_VALIDATE
    
    static var CreategraphicspipelinestateAsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_AS_ROOT_SIGNATURE_MISMATCH
    
    static var CreategraphicspipelinestateMsRootSignatureMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_MS_ROOT_SIGNATURE_MISMATCH
    
    static var AddToStateObjectError = D3D12_MESSAGE_ID_ADD_TO_STATE_OBJECT_ERROR
    
    static var CreateProtectedResourceSessionInvalidArgument = D3D12_MESSAGE_ID_CREATE_PROTECTED_RESOURCE_SESSION_INVALID_ARGUMENT
    
    static var CreategraphicspipelinestateMsPsoDescMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_MS_PSO_DESC_MISMATCH
    
    static var CreatepipelinestateMsIncompleteType = D3D12_MESSAGE_ID_CREATEPIPELINESTATE_MS_INCOMPLETE_TYPE
    
    static var CreategraphicspipelinestateAsNotMsMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_AS_NOT_MS_MISMATCH
    
    static var CreategraphicspipelinestateMsNotPsMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_MS_NOT_PS_MISMATCH
    
    static var NonzeroSamplerFeedbackMipRegionWithIncompatibleFormat = D3D12_MESSAGE_ID_NONZERO_SAMPLER_FEEDBACK_MIP_REGION_WITH_INCOMPATIBLE_FORMAT
    
    static var CreategraphicspipelinestateInputlayoutShaderMismatch = D3D12_MESSAGE_ID_CREATEGRAPHICSPIPELINESTATE_INPUTLAYOUT_SHADER_MISMATCH
    
    static var EmptyDispatch = D3D12_MESSAGE_ID_EMPTY_DISPATCH
    
    static var ResourceFormatRequiresSamplerFeedbackCapability = D3D12_MESSAGE_ID_RESOURCE_FORMAT_REQUIRES_SAMPLER_FEEDBACK_CAPABILITY
    
    static var SamplerFeedbackMapInvalidMipRegion = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_INVALID_MIP_REGION
    
    static var SamplerFeedbackMapInvalidDimension = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_INVALID_DIMENSION
    
    static var SamplerFeedbackMapInvalidSampleCount = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_INVALID_SAMPLE_COUNT
    
    static var SamplerFeedbackMapInvalidSampleQuality = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_INVALID_SAMPLE_QUALITY
    
    static var SamplerFeedbackMapInvalidLayout = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_INVALID_LAYOUT
    
    static var SamplerFeedbackMapRequiresUnorderedAccessFlag = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_MAP_REQUIRES_UNORDERED_ACCESS_FLAG
    
    static var SamplerFeedbackCreateUavNullArguments = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_CREATE_UAV_NULL_ARGUMENTS
    
    static var SamplerFeedbackUavRequiresSamplerFeedbackCapability = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_UAV_REQUIRES_SAMPLER_FEEDBACK_CAPABILITY
    
    static var SamplerFeedbackCreateUavRequiresFeedbackMapFormat = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_CREATE_UAV_REQUIRES_FEEDBACK_MAP_FORMAT
    
    static var CreatemeshshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEMESHSHADER_INVALIDSHADERBYTECODE
    
    static var CreatemeshshaderOutofmemory = D3D12_MESSAGE_ID_CREATEMESHSHADER_OUTOFMEMORY
    
    static var CreatemeshshaderwithstreamoutputInvalidshadertype = D3D12_MESSAGE_ID_CREATEMESHSHADERWITHSTREAMOUTPUT_INVALIDSHADERTYPE
    
    static var ResolvesubresourceSamplerFeedbackTranscodeInvalidFormat = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_SAMPLER_FEEDBACK_TRANSCODE_INVALID_FORMAT
    
    static var ResolvesubresourceSamplerFeedbackInvalidMipLevelCount = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_SAMPLER_FEEDBACK_INVALID_MIP_LEVEL_COUNT
    
    static var ResolvesubresourceSamplerFeedbackTranscodeArraySizeMismatch = D3D12_MESSAGE_ID_RESOLVESUBRESOURCE_SAMPLER_FEEDBACK_TRANSCODE_ARRAY_SIZE_MISMATCH
    
    static var SamplerFeedbackCreateUavMismatchingTargetedResource = D3D12_MESSAGE_ID_SAMPLER_FEEDBACK_CREATE_UAV_MISMATCHING_TARGETED_RESOURCE
    
    static var CreatemeshshaderOutputexceedsmaxsize = D3D12_MESSAGE_ID_CREATEMESHSHADER_OUTPUTEXCEEDSMAXSIZE
    
    static var CreatemeshshaderGroupsharedexceedsmaxsize = D3D12_MESSAGE_ID_CREATEMESHSHADER_GROUPSHAREDEXCEEDSMAXSIZE
    
    static var VertexShaderOutputtingBothViewportArrayIndexAndShadingRateNotSupportedOnDevice = D3D12_MESSAGE_ID_VERTEX_SHADER_OUTPUTTING_BOTH_VIEWPORT_ARRAY_INDEX_AND_SHADING_RATE_NOT_SUPPORTED_ON_DEVICE
    
    static var MeshShaderOutputtingBothViewportArrayIndexAndShadingRateNotSupportedOnDevice = D3D12_MESSAGE_ID_MESH_SHADER_OUTPUTTING_BOTH_VIEWPORT_ARRAY_INDEX_AND_SHADING_RATE_NOT_SUPPORTED_ON_DEVICE
    
    static var CreatemeshshaderMismatchedasmspayloadsize = D3D12_MESSAGE_ID_CREATEMESHSHADER_MISMATCHEDASMSPAYLOADSIZE
    
    static var CreateRootSignatureUnboundedStaticDescriptors = D3D12_MESSAGE_ID_CREATE_ROOT_SIGNATURE_UNBOUNDED_STATIC_DESCRIPTORS
    
    static var CreateamplificationshaderInvalidshaderbytecode = D3D12_MESSAGE_ID_CREATEAMPLIFICATIONSHADER_INVALIDSHADERBYTECODE
    
    static var CreateamplificationshaderOutofmemory = D3D12_MESSAGE_ID_CREATEAMPLIFICATIONSHADER_OUTOFMEMORY
    
    static var CreateShadercachesession = D3D12_MESSAGE_ID_CREATE_SHADERCACHESESSION
    
    static var LiveShadercachesession = D3D12_MESSAGE_ID_LIVE_SHADERCACHESESSION
    
    static var DestroyShadercachesession = D3D12_MESSAGE_ID_DESTROY_SHADERCACHESESSION
    
    static var CreateshadercachesessionInvalidargs = D3D12_MESSAGE_ID_CREATESHADERCACHESESSION_INVALIDARGS
    
    static var CreateshadercachesessionDisabled = D3D12_MESSAGE_ID_CREATESHADERCACHESESSION_DISABLED
    
    static var CreateshadercachesessionAlreadyopen = D3D12_MESSAGE_ID_CREATESHADERCACHESESSION_ALREADYOPEN
    
    static var ShadercachecontrolDevelopermode = D3D12_MESSAGE_ID_SHADERCACHECONTROL_DEVELOPERMODE
    
    static var ShadercachecontrolInvalidflags = D3D12_MESSAGE_ID_SHADERCACHECONTROL_INVALIDFLAGS
    
    static var ShadercachecontrolStatealreadyset = D3D12_MESSAGE_ID_SHADERCACHECONTROL_STATEALREADYSET
    
    static var ShadercachecontrolIgnoredflag = D3D12_MESSAGE_ID_SHADERCACHECONTROL_IGNOREDFLAG
    
    static var ShadercachesessionStorevalueAlreadypresent = D3D12_MESSAGE_ID_SHADERCACHESESSION_STOREVALUE_ALREADYPRESENT
    
    static var ShadercachesessionStorevalueHashcollision = D3D12_MESSAGE_ID_SHADERCACHESESSION_STOREVALUE_HASHCOLLISION
    
    static var ShadercachesessionStorevalueCachefull = D3D12_MESSAGE_ID_SHADERCACHESESSION_STOREVALUE_CACHEFULL
    
    static var ShadercachesessionFindvalueNotfound = D3D12_MESSAGE_ID_SHADERCACHESESSION_FINDVALUE_NOTFOUND
    
    static var ShadercachesessionCorrupt = D3D12_MESSAGE_ID_SHADERCACHESESSION_CORRUPT
    
    static var ShadercachesessionDisabled = D3D12_MESSAGE_ID_SHADERCACHESESSION_DISABLED
    
    static var OversizedDispatch = D3D12_MESSAGE_ID_OVERSIZED_DISPATCH
    
    static var CreateVideoencoder = D3D12_MESSAGE_ID_CREATE_VIDEOENCODER
    
    static var LiveVideoencoder = D3D12_MESSAGE_ID_LIVE_VIDEOENCODER
    
    static var DestroyVideoencoder = D3D12_MESSAGE_ID_DESTROY_VIDEOENCODER
    
    static var CreateVideoencoderheap = D3D12_MESSAGE_ID_CREATE_VIDEOENCODERHEAP
    
    static var LiveVideoencoderheap = D3D12_MESSAGE_ID_LIVE_VIDEOENCODERHEAP
    
    static var DestroyVideoencoderheap = D3D12_MESSAGE_ID_DESTROY_VIDEOENCODERHEAP
    
    static var CopytextureregionMismatchEncodeReferenceOnlyFlag = D3D12_MESSAGE_ID_COPYTEXTUREREGION_MISMATCH_ENCODE_REFERENCE_ONLY_FLAG
    
    static var CopyresourceMismatchEncodeReferenceOnlyFlag = D3D12_MESSAGE_ID_COPYRESOURCE_MISMATCH_ENCODE_REFERENCE_ONLY_FLAG
    
    static var EncodeFrameInvalidParameters = D3D12_MESSAGE_ID_ENCODE_FRAME_INVALID_PARAMETERS
    
    static var EncodeFrameUnsupportedParameters = D3D12_MESSAGE_ID_ENCODE_FRAME_UNSUPPORTED_PARAMETERS
    
    static var ResolveEncoderOutputMetadataInvalidParameters = D3D12_MESSAGE_ID_RESOLVE_ENCODER_OUTPUT_METADATA_INVALID_PARAMETERS
    
    static var ResolveEncoderOutputMetadataUnsupportedParameters = D3D12_MESSAGE_ID_RESOLVE_ENCODER_OUTPUT_METADATA_UNSUPPORTED_PARAMETERS
    
    static var CreateVideoEncoderInvalidParameters = D3D12_MESSAGE_ID_CREATE_VIDEO_ENCODER_INVALID_PARAMETERS
    
    static var CreateVideoEncoderUnsupportedParameters = D3D12_MESSAGE_ID_CREATE_VIDEO_ENCODER_UNSUPPORTED_PARAMETERS
    
    static var CreateVideoEncoderHeapInvalidParameters = D3D12_MESSAGE_ID_CREATE_VIDEO_ENCODER_HEAP_INVALID_PARAMETERS
    
    static var CreateVideoEncoderHeapUnsupportedParameters = D3D12_MESSAGE_ID_CREATE_VIDEO_ENCODER_HEAP_UNSUPPORTED_PARAMETERS
    
    static var CreatecommandlistNullCommandallocator = D3D12_MESSAGE_ID_CREATECOMMANDLIST_NULL_COMMANDALLOCATOR
    
    static var ClearUnorderedAccessViewInvalidDescriptorHandle = D3D12_MESSAGE_ID_CLEAR_UNORDERED_ACCESS_VIEW_INVALID_DESCRIPTOR_HANDLE
    
    static var DescriptorHeapNotShaderVisible = D3D12_MESSAGE_ID_DESCRIPTOR_HEAP_NOT_SHADER_VISIBLE
    
    static var CreateblendstateBlendopWarning = D3D12_MESSAGE_ID_CREATEBLENDSTATE_BLENDOP_WARNING
    
    static var CreateblendstateBlendopalphaWarning = D3D12_MESSAGE_ID_CREATEBLENDSTATE_BLENDOPALPHA_WARNING
    
    static var WriteCombinePerformanceWarning = D3D12_MESSAGE_ID_WRITE_COMBINE_PERFORMANCE_WARNING
    
    static var ResolveQueryInvalidQueryState = D3D12_MESSAGE_ID_RESOLVE_QUERY_INVALID_QUERY_STATE
    
    static var SetprivatedataNoAccess = D3D12_MESSAGE_ID_SETPRIVATEDATA_NO_ACCESS
    
    static var MessagesEnd = D3D12_MESSAGE_ID_D3D12_MESSAGES_END
}
