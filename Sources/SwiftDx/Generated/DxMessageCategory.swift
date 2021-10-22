import WinSDK

typealias DxMessageCategory = D3D12_MESSAGE_CATEGORY

public extension DxMessageCategory {
    static var ApplicationDefined = D3D12_MESSAGE_CATEGORY_APPLICATION_DEFINED
    
    static var Miscellaneous = D3D12_MESSAGE_CATEGORY_MISCELLANEOUS
    
    static var Initialization = D3D12_MESSAGE_CATEGORY_INITIALIZATION
    
    static var Cleanup = D3D12_MESSAGE_CATEGORY_CLEANUP
    
    static var Compilation = D3D12_MESSAGE_CATEGORY_COMPILATION
    
    static var StateCreation = D3D12_MESSAGE_CATEGORY_STATE_CREATION
    
    static var StateSetting = D3D12_MESSAGE_CATEGORY_STATE_SETTING
    
    static var StateGetting = D3D12_MESSAGE_CATEGORY_STATE_GETTING
    
    static var ResourceManipulation = D3D12_MESSAGE_CATEGORY_RESOURCE_MANIPULATION
    
    static var Execution = D3D12_MESSAGE_CATEGORY_EXECUTION
    
    static var Shader = D3D12_MESSAGE_CATEGORY_SHADER
}
