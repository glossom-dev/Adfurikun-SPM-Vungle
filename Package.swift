// swift-tools-version: 6.0
import PackageDescription

let package = Package(
    name: "Adfurikun-SPM-Vungle",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "AdfurikunVungle", targets: ["AdfurikunVungle"])
    ],
    dependencies: [
        .package(
            url: "https://github.com/glossom-dev/Adfurikun-SPM-Core.git",
            exact: "4.4.0"
        ),
        .package(
            url: "https://github.com/Vungle/VungleAdsSDK-SwiftPackageManager.git",
            exact: "7.4.2"
        ),
    ],
    targets: [
        .target(
            name: "AdfurikunVungle",
            dependencies: [
                .product(name: "AdfurikunSDK", package: "Adfurikun-SPM-Core"),
                .product(name: "VungleAdsSDK", package: "VungleAdsSDK-SwiftPackageManager")
            ],
            path: "Sources",
            publicHeadersPath: "."
        )
    ]
)
