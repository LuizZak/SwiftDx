import WinSDK
import SwiftCOM

private typealias Factory = DirectX.Infrastructure.Factory
private typealias Adapter = DirectX.Infrastructure.Adapter
private typealias SwapChain = DirectX.Infrastructure.SwapChain
private typealias Device = DirectX.Device
private typealias CommandQueue = DirectX.CommandQueue
private typealias InfoQueue = DirectX.InfoQueue
private typealias DescriptorHeap = DirectX.DescriptorHeap
private typealias Resource = DirectX.Resource
private typealias CommandAllocator = DirectX.CommandAllocator
private typealias Fence = DirectX.Fence
private typealias GraphicsCommandList = DirectX.GraphicsCommandList
private typealias Output = DirectX.Infrastructure.Output
private typealias RootSignature = DirectX.RootSignature
private typealias PipelineState = DirectX.PipelineState

class DirectXManager {
    #if DEBUG
    let debugMode: Bool = true
    #else
    let debugMode: Bool = false
    #endif

    private let useWarp: Bool = false

    private var state: DirectXState?
    private var shaders: [DirectXShader]

    init(shaders: [DirectXShader]) {
        self.shaders = shaders
    }

    deinit {
        // De-allocate resources
    }

    func initialize(hwnd: HWND, width: Int, height: Int) throws {
        if debugMode {
            try enableDebugInterface()
        }

        let factory = try makeDxgiFactory()
        let adapter = try makeAdapter(factory)
        let device = try makeDevice(adapter)

        if debugMode {
            try enableDebugBreaks(device)
        }

        let backBufferCount = 3
        let backBufferFormat = DxgiFormat.R8G8B8A8_unorm
        let tearingSupported = try checkTearingSupport(factory)

        let rootSignature = try makeRootSignature(device)
        let queue = try makeCommandQueue(device)
        let swapChain = try makeSwapChain(
            factory,
            queue,
            hwnd,
            width: width,
            height: height,
            backBufferFormat: backBufferFormat,
            bufferCount: backBufferCount,
            tearingSupported: tearingSupported
        )
        let fence = try makeFence(device)
        let fenceEvent = try makeEventHandle()
        let rtvDescriptorHeap = try makeDescriptorHeap(device, .rtv, backBufferCount)
        let rtvDescriptorSize = Int(try device.GetDescriptorHandleIncrementSize(.rtv))
        let commandAllocators = try makeCommandAllocators(device, backBufferCount: backBufferCount)
        let commandList: GraphicsCommandList = try device.CreateCommandList(0, .direct, commandAllocators[0], nil)
        try commandList.Close()

        let fenceStructure = DirectXState.FenceStructure(
            fence: fence,
            fenceValue: 0,
            frameFenceValues: .init(repeating: 0, count: backBufferCount),
            fenceEvent: fenceEvent
        )

        state = .init(
            backBufferCount: backBufferCount,
            backBufferFormat: backBufferFormat,
            tearingSupported: tearingSupported,
            factory: factory,
            device: device,
            rootSignature: rootSignature,
            commandQueue: queue,
            swapChain: swapChain,
            commandAllocators: commandAllocators,
            commandList: commandList,
            fenceStructure: fenceStructure,
            rtvDescriptorHeap: rtvDescriptorHeap,
            rtvDescriptorSize: rtvDescriptorSize
        )

        try state?.updateRenderTargetViews(device, swapChain, rtvDescriptorHeap)
    }

    func render() throws {
        guard var state = state else {
            throw Error.callToRenderBeforeInitialize
        }
        defer { self.state = state }

        let backBufferState = try state.makeBackBufferStateForFrame()
        let commandList = try backBufferState.resetCommandList()

        try clearRenderTarget(state: state, commandList: commandList, backBufferState: backBufferState)
        try present(state: &state, commandList: commandList, backBufferState: backBufferState)
    }

    private func clearRenderTarget(state: DirectXState, commandList: GraphicsCommandList, backBufferState: DirectXState.BackBufferState) throws {
        let barrier = DxResourceBarrier.transition(backBufferState.backBuffer, .present, .renderTarget)
        try commandList.ResourceBarrier(1, barrier)

        let clearColor: (FLOAT, FLOAT, FLOAT, FLOAT) = (0.4, 0.6, 0.9, 1.0)

        let rtv = try DxCPUDescriptorHandle(state.rtvDescriptorHeap.GetCPUDescriptorHandleForHeapStart(), state.backBufferIndex, state.rtvDescriptorSize)

        try commandList.ClearRenderTargetView(rtv, clearColor, 0, nil)
    }

    private func present(state: inout DirectXState, commandList: GraphicsCommandList, backBufferState: DirectXState.BackBufferState) throws {
        let barrier = DxResourceBarrier.transition(backBufferState.backBuffer, .renderTarget, .present)
        try commandList.ResourceBarrier(1, barrier)

        try commandList.Close()
        try state.commandQueue.ExecuteCommandLists([commandList])

        state.fenceStructure.frameFenceValues[state.backBufferIndex] = try state.fenceStructure.signal(state.backBufferIndex, commandQueue: state.commandQueue)

        let syncInterval: UINT = state.isVSyncOn ? 1 : 0
        let presentFlags: UINT = state.tearingSupported && !state.isVSyncOn ? DXGI_PRESENT_ALLOW_TEARING : 0

        try state.swapChain.Present(syncInterval, presentFlags)

        state.backBufferIndex = Int(try state.swapChain.GetCurrentBackBufferIndex())

        try state.fenceStructure.waitForFenceValue(fenceValue: state.fenceStructure.frameFenceValues[state.backBufferIndex])
    }

    private func enableDebugInterface() throws {
        let debugInterface: DirectX.Debug = try D3D12GetDebugInterface()
        try debugInterface.EnableDebugLayer()
    }

    private func enableDebugBreaks(_ device: Device) throws {
        let infoQueue: DirectX.InfoQueue = try device.QueryInterface()

        try infoQueue.SetBreakOnSeverity(.corruption, true)
        try infoQueue.SetBreakOnSeverity(.error, true)
        try infoQueue.SetBreakOnSeverity(.warning, true)

        var severities: [DxMessageSeverity] = [
            .info
        ]
        var denyIds: [DxMessageId] = [
            .clearRenderTargetViewMismatchingClearValue,
            .mapInvalidNullRange,
            .unmapInvalidNullRange,
        ]

        try severities.withUnsafeMutableBufferPointer { sp in
            try denyIds.withUnsafeMutableBufferPointer { dp in
                var filter = DxInfoQueueFilter()
                filter.DenyList.NumSeverities = UINT(sp.count)
                filter.DenyList.pSeverityList = sp.baseAddress!
                filter.DenyList.NumIDs = UINT(dp.count)
                filter.DenyList.pIDList = dp.baseAddress!

                try infoQueue.PushStorageFilter(&filter)
            }
        }
    }

    private func makeRootSignature(_ device: Device) throws -> RootSignature {
        let rootSignatureDesc = DxRootSignatureDesc(0, nil, 0, nil, .allowInputAssemblerInputLayout)

        let (signature, _) = try D3D12SerializeRootSignature(rootSignatureDesc, .version_1)

        return try device.CreateRootSignature(0, signature.GetBufferPointer(), signature.GetBufferSize())
    }

    private func makeDxgiFactory() throws -> Factory {
        var flags: UINT = 0
        if debugMode {
            flags = UINT(DXGI_CREATE_FACTORY_DEBUG)
        }

        return try CreateDXGIFactory2(flags)
    }

    private func makeAdapter(_ factory: Factory) throws -> Adapter {
        if useWarp {
            return try factory.EnumWarpAdapter()
        }

        return try factory.EnumAdapterByGpuPreference(0, .highPerformance)
    }

    private func makeDevice(_ adapter: Adapter) throws -> Device {
        try D3D12CreateDevice(adapter, .level_12_0)
    }

    private func makeCommandAllocators(_ device: Device, backBufferCount: Int) throws -> [CommandAllocator] {
        var commandAllocators: [CommandAllocator] = []
        for _ in 0..<backBufferCount {
            commandAllocators.append(try device.CreateCommandAllocator(.direct))
        }

        return commandAllocators
    }

    private func makeCommandQueue(_ device: Device) throws -> CommandQueue {
        var desc = DxCommandQueueDesc()
        desc.Type =     .direct
        desc.Priority = DxCommandQueuePriority.normal.rawValue
        desc.Flags =    .none
        desc.NodeMask = 0

        return try device.CreateCommandQueue(desc)
    }

    private func makeSwapChain(
        _ factory: Factory,
        _ queue: CommandQueue,
        _ hwnd: HWND,
        width: Int,
        height: Int,
        backBufferFormat: DxgiFormat,
        bufferCount: Int,
        tearingSupported: Bool
    ) throws -> SwapChain {
        var swapChainDesc = DxgiSwapChainDesc1()
        swapChainDesc.Width = UINT(width)
        swapChainDesc.Height = UINT(height)
        swapChainDesc.Format = backBufferFormat
        swapChainDesc.Stereo = false
        swapChainDesc.SampleDesc = .init(Count: 1, Quality: 0)
        swapChainDesc.BufferUsage = DXGI_USAGE_RENDER_TARGET_OUTPUT
        swapChainDesc.BufferCount = UINT(bufferCount)
        swapChainDesc.Scaling = .stretch
        swapChainDesc.SwapEffect = .flipDiscard
        swapChainDesc.AlphaMode = .unspecified
        swapChainDesc.Flags = tearingSupported ? UINT(DxgiSwapChainFlag.allowTearing.rawValue) : 0

        try factory.MakeWindowAssociation(hwnd, UINT(DXGI_MWA_NO_ALT_ENTER))

        return try factory.CreateSwapChainForHwnd(queue, hwnd, swapChainDesc, nil, nil).QueryInterface()
    }

    private func checkTearingSupport(_ factory: Factory) throws -> Bool {
        var allowTearing: BOOL = 0
        allowTearing = try factory.CheckFeatureSupport(.presentAllowTearing)

        return allowTearing == 1
    }

    private func makeDescriptorHeap(_ device: Device, _ type: DxDescriptorHeapType, _ numDescriptors: Int) throws -> DescriptorHeap {
        var desc = DxDescriptorHeapDesc()

        desc.NumDescriptors = UINT(numDescriptors)
        desc.Type = type

        return try device.CreateDescriptorHeap(desc)
    }

    private func makeFence(_ device: Device) throws -> Fence {
        try device.CreateFence(0, .none)
    }

    private func makeEventHandle() throws -> HANDLE {
        guard let event = CreateEventW(nil, false, false, nil) else {
            throw Error.failedToCreateEvent
        }

        return event
    }

    private enum Error: Swift.Error {
        case failedToCreateEvent
        case callToRenderBeforeInitialize
    }
}

private struct DirectXState {
    var backBufferCount: Int
    var backBufferFormat: DxgiFormat
    var backBufferIndex: Int = 0
    var isVSyncOn: Bool = false

    var tearingSupported: Bool

    var factory: Factory
    var device: Device
    var rootSignature: RootSignature
    var commandQueue: CommandQueue
    var swapChain: SwapChain
    var backBuffers: [Resource] = []
    var commandAllocators: [CommandAllocator]
    var commandList: GraphicsCommandList
    var fenceStructure: FenceStructure
    var rtvDescriptorHeap: DescriptorHeap
    var rtvDescriptorSize: Int

    internal init(
        backBufferCount: Int,
        backBufferFormat: DxgiFormat,
        backBufferIndex: Int = 0,
        isVSyncOn: Bool = false,
        tearingSupported: Bool,
        factory: Factory,
        device: Device,
        rootSignature: RootSignature,
        commandQueue: CommandQueue,
        swapChain: SwapChain,
        backBuffers: [Resource] = [],
        commandAllocators: [CommandAllocator],
        commandList: GraphicsCommandList,
        fenceStructure: FenceStructure,
        rtvDescriptorHeap: DescriptorHeap,
        rtvDescriptorSize: Int
    ) {

        self.backBufferCount = backBufferCount
        self.backBufferFormat = backBufferFormat
        self.backBufferIndex = backBufferIndex
        self.isVSyncOn = isVSyncOn
        self.tearingSupported = tearingSupported
        self.factory = factory
        self.device = device
        self.rootSignature = rootSignature
        self.commandQueue = commandQueue
        self.swapChain = swapChain
        self.backBuffers = backBuffers
        self.commandAllocators = commandAllocators
        self.commandList = commandList
        self.fenceStructure = fenceStructure
        self.rtvDescriptorHeap = rtvDescriptorHeap
        self.rtvDescriptorSize = rtvDescriptorSize
    }

    mutating func updateRenderTargetViews(_ device: Device, _ swapChain: SwapChain, _ descriptorHeap: DescriptorHeap) throws {
        backBuffers.removeAll()

        var rtvHandle = try descriptorHeap.GetCPUDescriptorHandleForHeapStart()

        for i in 0..<backBufferCount {
            let backBuffer: DirectX.Resource = try swapChain.GetBuffer(UINT(i))

            try device.CreateRenderTargetView(backBuffer, nil, rtvHandle)

            backBuffers.append(backBuffer)

            rtvHandle.offset(Int(rtvDescriptorSize))
        }
    }

    func makeBackBufferStateForFrame() throws -> BackBufferState {
        assert(commandAllocators.count == backBufferCount, "commandAllocators.count == backBufferCount \((commandAllocators.count, backBufferCount))")
        assert(backBuffers.count == backBufferCount, "backBuffers.count == backBufferCount \((backBuffers.count, backBufferCount))")

        let allocator = commandAllocators[backBufferIndex]
        try allocator.Reset()

        return .init(
            device: device,
            commandAllocator: allocator,
            backBuffer: backBuffers[backBufferIndex],
            commandList: commandList
        )
    }

    struct BackBufferState {
        var device: Device
        var commandAllocator: CommandAllocator
        var backBuffer: Resource
        var commandList: GraphicsCommandList

        func resetCommandList() throws -> GraphicsCommandList {
            try commandList.Reset(commandAllocator, nil)
            return commandList
        }
    }

    struct FenceStructure {
        var fence: Fence
        var fenceValue: UInt64
        var frameFenceValues: [UInt64]
        var fenceEvent: HANDLE

        @discardableResult
        mutating func signal(_ index: Int, commandQueue: CommandQueue) throws -> UInt64 {
            fenceValue &+= 1

            try commandQueue.Signal(fence, fenceValue)

            return fenceValue
        }

        func waitForFenceValue(fenceValue: UInt64, milliseconds: DWORD = .max) throws {
            guard try fence.GetCompletedValue() < fenceValue else {
                return
            }

            try fence.SetEventOnCompletion(fenceValue, fenceEvent)
            WaitForSingleObject(fenceEvent, milliseconds)
        }

        mutating func flush(_ index: Int, _ commandQueue: CommandQueue) throws {
            let fenceValueForSignal = try signal(index, commandQueue: commandQueue)
            try waitForFenceValue(fenceValue: fenceValueForSignal)
        }
    }
}
