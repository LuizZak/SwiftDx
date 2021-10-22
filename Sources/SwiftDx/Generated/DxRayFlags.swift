import WinSDK

typealias DxRayFlags = D3D12_RAY_FLAGS

public extension DxRayFlags {
    static var FlagNone = D3D12_RAY_FLAG_NONE
    
    static var FlagForceOpaque = D3D12_RAY_FLAG_FORCE_OPAQUE
    
    static var FlagForceNonOpaque = D3D12_RAY_FLAG_FORCE_NON_OPAQUE
    
    static var FlagAcceptFirstHitAndEndSearch = D3D12_RAY_FLAG_ACCEPT_FIRST_HIT_AND_END_SEARCH
    
    static var FlagSkipClosestHitShader = D3D12_RAY_FLAG_SKIP_CLOSEST_HIT_SHADER
    
    static var FlagCullBackFacingTriangles = D3D12_RAY_FLAG_CULL_BACK_FACING_TRIANGLES
    
    static var FlagCullFrontFacingTriangles = D3D12_RAY_FLAG_CULL_FRONT_FACING_TRIANGLES
    
    static var FlagCullOpaque = D3D12_RAY_FLAG_CULL_OPAQUE
    
    static var FlagCullNonOpaque = D3D12_RAY_FLAG_CULL_NON_OPAQUE
    
    static var FlagSkipTriangles = D3D12_RAY_FLAG_SKIP_TRIANGLES
    
    static var FlagSkipProceduralPrimitives = D3D12_RAY_FLAG_SKIP_PROCEDURAL_PRIMITIVES
}
