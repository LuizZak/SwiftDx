import SwiftCOM

/// A wrapper around a `IDXGIFactory` object.
public class DxFactory {
    private var factory: DirectX.Infrastructure.Factory

    public init(_ factory: DirectX.Infrastructure.Factory) {
        self.factory = factory
    }
}
