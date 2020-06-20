// swift-tools-version:5.2
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftyTCOD",
    products: [
        .library(
            name: "SwiftyTCOD",
            targets: ["SwiftyTCOD"]),
    ],
    dependencies: [],
    targets: [
        .systemLibrary(name: "tcod"),
        .target(name: "SwiftyTCOD", dependencies: ["tcod"]),
        .testTarget(name: "SwiftyTCODTests", dependencies: ["SwiftyTCOD"]),
    ]
)
