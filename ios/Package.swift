// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "video_thumbnail",
    platforms: [
        .iOS(.v15)
    ],
    products: [
        .library(name: "video_thumbnail", targets: ["video_thumbnail"])
    ],
    dependencies: [
        .package(url: "https://github.com/nicklama/libwebp-xcframework.git", from: "1.3.0")
    ],
    targets: [
        .target(
            name: "video_thumbnail",
            dependencies: [
                .product(name: "libwebp-xcframework", package: "libwebp-xcframework")
            ],
            path: "Classes",
            publicHeadersPath: ".",
            cSettings: [
                .headerSearchPath(".")
            ]
        )
    ]
)
