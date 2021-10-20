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
        .package(url: "https://github.com/compnerd/swift-com.git", .branch("main"))
    ],
    targets: [
        .target(
            name: "SwiftDx",
            dependencies: [
                .product(name: "SwiftCOM", package: "swift-com"),
            ]),
        .executableTarget(
            name: "SwiftDx_Sample",
            dependencies: ["SwiftDx"],
            exclude: [
                "SwiftDx_Sample.exe.manifest",
            ],
            swiftSettings: [
                .unsafeFlags([
                    "-parse-as-library", // Needed to produce valid Win32 UI binary
                ])
            ],
            linkerSettings: [
                .linkedLibrary("User32"),
                .linkedLibrary("ComCtl32"),
                .unsafeFlags([
                    "-Xlinker",
                    "/DEBUG",
                ], .when(configuration: .debug)),
                .unsafeFlags([
                    "-Xlinker",           // Needed to produce valid Win32 UI binary
                    "/SUBSYSTEM:WINDOWS", //
                ])
            ]),
        .testTarget(
            name: "SwiftDxTests",
            dependencies: ["SwiftDx"]),
    ]
)
