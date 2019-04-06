// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "OpenSubtitles",
    dependencies: [
        .package(
            url: "https://github.com/swift-stack/aio.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/http.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/rpc.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/compression.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/radix.git",
            .branch("master")),
        .package(
            url: "https://github.com/swift-stack/test.git",
            .branch("master"))
    ],
    targets: [
        .target(
            name: "OpenSubtitles",
            dependencies: ["XMLRPC", "Compression", "HTTP", "File", "Base64"]),
        .testTarget(
            name: "OpenSubtitlesTests",
            dependencies: ["OpenSubtitles", "Test"]),
    ]
)
