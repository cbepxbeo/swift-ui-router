// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "SwiftUIRouter",
    platforms: [.iOS(.v14)],
    products: [
        .library(
            name: "SwiftUIRouter",
            targets: ["SwiftUIRouter"]),
    ],
    dependencies: [
        .package(url: "https://github.com/cbepxbeo/swift-utilities.git", from: "0.0.4"),
        .package(url: "https://github.com/cbepxbeo/swift-ui-extensions.git", from: "0.0.1")
    ],
    targets: [
        .target(
            name: "SwiftUIRouter",
            dependencies: [
                .product(name: "SwiftUtilities", package: "swift-utilities"),
                .product(name: "SwiftUIExtension", package: "swift-ui-extensions")
            ],
            path: "Sources"
        ),
        .testTarget(
            name: "SwiftUIRouterTests",
            dependencies: ["SwiftUIRouter"]
         ),
    ],
    swiftLanguageVersions: [ .version("5.1") ]
)
