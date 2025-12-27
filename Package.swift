// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "actr-protocols",
    platforms: [
        .iOS(.v15),
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "ActrProtocols",
            targets: ["ActrProtocols"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.20.0"),
    ],
    targets: [
        .target(
            name: "ActrProtocols",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
            ]
        ),
    ]
)
