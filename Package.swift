// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "Ringcentral-Video-SDK",
    platforms: [
        .iOS(.v13)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "Ringcentral-Video-SDK",
            targets: ["rcvsdk", "RcvReplayKitExtension"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "Ringcentral-Video-SDK",
            url: "https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/v0.10.0/RingCentral_Video_iOS_Client_SDK.zip",
            checksum: "e2010eb521a1f31cd45aa9b15eea712ba3b861ba6badfb8846816ad94658b0b4"
        ),
        .binaryTarget(
            name: "rcvsdk",
            path: "rcvsdk.xcframework"
        ),
        .binaryTarget(
            name: "RcvReplayKitExtension",
            path: "RcvReplayKitExtension.xcframework"
        )
    ],
    swiftLanguageVersions: [.v5]
)
