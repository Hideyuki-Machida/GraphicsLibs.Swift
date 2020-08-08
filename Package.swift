// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "GraphicsLibs.Swift",
    platforms: [
        .iOS(.v11),
        .macOS(.v10_15)
    ],
    products: [
        .library(
            name: "GraphicsLibs.Swift",
            targets: ["GraphicsLibs.Swift"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Hideyuki-Machida/ProcessLogger.Swift", .branch("master"))
    ],
    targets: [
        .target(
            name: "GraphicsLibs.Swift",
            dependencies: ["ProcessLogger.Swift"]),
        .testTarget(
            name: "GraphicsLibs.SwiftTests",
            dependencies: ["GraphicsLibs.Swift"]),
    ]
)
