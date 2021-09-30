// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "PlayKitProviders",
    platforms: [
        .iOS(.v9),
        .tvOS(.v9)
    ],
    products: [
        .library(
            name: "PlayKitProviders",
            targets: ["PlayKitProviders"]
        ),
    ],
    dependencies: [
        .package(url: "https://github.com/yahoojapan/SwiftyXMLParser", .upToNextMinor(from: "5.5.0")),
        .package(name: "PlayKit", url: "https://github.com/init-Mobile/playkit-ios", .branch("develop")),
        .package(name: "KalturaNetKit", url: "https://github.com/init-Mobile/netkit-ios", .branch("develop")),
        .package(name: "PlayKitUtils", url: "https://github.com/init-Mobile/playkit-ios-utils", .branch("develop")),
    ],
    targets: [
        .target(
            name: "PlayKitProviders",
            dependencies: [
                "SwiftyXMLParser",
                "PlayKit",
                "KalturaNetKit",
                "PlayKitUtils"
            ],
            path: "Sources"
        ),
    ],
    swiftLanguageVersions: [.v5]
)
