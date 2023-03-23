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
            url: "https://github.com/ringcentral/ringcentral-videosdk-ios-spec/releases/download/v0.9.0/RingCentral_Video_iOS_Client_SDK.zip",
            checksum: "6e71b803bbf8f159f6d4cac81e5c0c2140ad72eebf9888c738fa86a18530038d"
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
