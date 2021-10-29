// swift-tools-version:5.5
import PackageDescription

let package = Package(
    name: "SwiftDx",
    products: [
        // .library(
        //     name: "SwiftDx",
        //     targets: ["SwiftDx"]),
        .library(
            name: "CDirect2D",
            targets: ["CDirect2D"]),
    ],
    dependencies: [
        .package(url: "https://github.com/compnerd/swift-com.git", .branch("main")),
    ],
    targets: [
        //.target(
        //    name: "SwiftDx",
        //    dependencies: [
        //        .product(name: "SwiftCOM", package: "swift-com"),
        //    ]),
        .target(name: "CDirect2D"),
        .target(
            name: "SwiftDirect2D",
            dependencies: [
                "CDirect2D",
                .product(name: "SwiftCOM", package: "swift-com"),
            ]),
        //.testTarget(
        //    name: "SwiftDxTests",
        //    dependencies: ["SwiftDx"]),
    ]
)
