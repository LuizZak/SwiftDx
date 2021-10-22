// HEADS UP!: Auto-generated file, changes made directly here will be overwritten by code generators!

import WinSDK

typealias DxRayFlags = D3D12_RAY_FLAGS

public extension DxRayFlags {
    static let none = D3D12_RAY_FLAG_NONE
    
    static let forceOpaque = D3D12_RAY_FLAG_FORCE_OPAQUE
    
    static let forceNonOpaque = D3D12_RAY_FLAG_FORCE_NON_OPAQUE
    
    static let acceptFirstHitAndEndSearch = D3D12_RAY_FLAG_ACCEPT_FIRST_HIT_AND_END_SEARCH
    
    static let skipClosestHitShader = D3D12_RAY_FLAG_SKIP_CLOSEST_HIT_SHADER
    
    static let cullBackFacingTriangles = D3D12_RAY_FLAG_CULL_BACK_FACING_TRIANGLES
    
    static let cullFrontFacingTriangles = D3D12_RAY_FLAG_CULL_FRONT_FACING_TRIANGLES
    
    static let cullOpaque = D3D12_RAY_FLAG_CULL_OPAQUE
    
    static let cullNonOpaque = D3D12_RAY_FLAG_CULL_NON_OPAQUE
    
    static let skipTriangles = D3D12_RAY_FLAG_SKIP_TRIANGLES
    
    static let skipProceduralPrimitives = D3D12_RAY_FLAG_SKIP_PROCEDURAL_PRIMITIVES
}
