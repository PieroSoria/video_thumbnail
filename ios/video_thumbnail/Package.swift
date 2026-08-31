// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "video_thumbnail",
    platforms: [
        .iOS("15.0")
    ],
    products: [
        .library(name: "video-thumbnail", targets: ["video_thumbnail"])
    ],
    dependencies: [
        .package(name: "FlutterFramework", path: "../FlutterFramework"),
        .package(url: "https://github.com/gewill/webp-spm.git", from: "1.6.1")
    ],
    targets: [
        .target(
            name: "video_thumbnail",
            dependencies: [
                .product(name: "FlutterFramework", package: "FlutterFramework"),
                .product(name: "WebP", package: "webp-spm"),
                .product(name: "SharpYuv", package: "webp-spm")
            ],
            cSettings: [
                .headerSearchPath("include/video_thumbnail")
            ]
        )
    ]
)
