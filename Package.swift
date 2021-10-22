// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftDx",
    products: [
        .library(
            name: "SwiftDx",
            targets: ["SwiftDx"]),
    ],
    dependencies: [
        .package(url: "https://github.com/compnerd/swift-com.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "SwiftDx",
            dependencies: [
                .product(name: "SwiftCOM", package: "swift-com"),
            ]),
        .testTarget(
            name: "SwiftDxTests",
            dependencies: ["SwiftDx"]),
    ]
)
