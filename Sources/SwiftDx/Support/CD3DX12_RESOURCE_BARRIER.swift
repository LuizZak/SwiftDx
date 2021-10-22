import WinSDK
import SwiftCOM

typealias CD3DX12_RESOURCE_BARRIER = DxResourceBarrier

extension CD3DX12_RESOURCE_BARRIER {
    static func transition(_ pResource: DirectX.Resource,
                           _ stateBefore: DxResourceStates,
                           _ stateAfter: DxResourceStates,
                           _ subresource: UINT = UINT(D3D12_RESOURCE_BARRIER_ALL_SUBRESOURCES),
                           _ flags: DxResourceBarrierFlags = .none) -> Self {
        
        var result = CD3DX12_RESOURCE_BARRIER()
        result.Type = .transition
        result.Flags = flags
        result.Transition.pResource = RawPointer(pResource)
        result.Transition.StateBefore = stateBefore
        result.Transition.StateAfter = stateAfter
        result.Transition.Subresource = subresource

        assert(result.Transition.pResource != nil, "result.Transition.pResource")

        return result
    }

    /* TODO: Consider implementing the following methods:
    static inline CD3DX12_RESOURCE_BARRIER Aliasing(
        _In_ ID3D12Resource* pResourceBefore,
        _In_ ID3D12Resource* pResourceAfter)
    {
        CD3DX12_RESOURCE_BARRIER result = {};
        DxResourceBarrier &barrier = result;
        result.Type = D3D12_RESOURCE_BARRIER_TYPE_ALIASING;
        barrier.Aliasing.pResourceBefore = pResourceBefore;
        barrier.Aliasing.pResourceAfter = pResourceAfter;
        return result;
    }
    static inline CD3DX12_RESOURCE_BARRIER UAV(
        _In_ ID3D12Resource* pResource)
    {
        CD3DX12_RESOURCE_BARRIER result = {};
        DxResourceBarrier &barrier = result;
        result.Type = D3D12_RESOURCE_BARRIER_TYPE_UAV;
        barrier.UAV.pResource = pResource;
        return result;
    }
    */
}
