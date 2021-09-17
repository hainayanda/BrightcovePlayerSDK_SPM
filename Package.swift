// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "BrightcoveSDK",
    platforms: [
        .iOS(.v11)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "BrightcoveSDK",
            targets: ["BrightcovePlayerSDK", "BrightcoveGoogleCast"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        .binaryTarget(
            name: "BrightcovePlayerSDK",
            path: "BrightcovePlayerSDK.xcframework"
        ),
        .binaryTarget(
            name: "BrightcoveGoogleCast",
            path: "BrightcoveGoogleCast.xcframework"
        )
    ]
)
