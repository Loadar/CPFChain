// swift-tools-version: 5.8

import PackageDescription

let package = Package(
    name: "CPFChain",
    products: [
        .library(
            name: "CPFChain",
            targets: ["CPFChain"]),
        .library(
            name: "CPFChain-Dynamic",
            type: .dynamic,
            targets: ["CPFChain"]),
    ],
    dependencies: [

    ],
    targets: [
        .target(
            name: "CPFChain",
            dependencies: [],
            resources: [.copy("PrivacyInfo.xcprivacy")]
        ),
    ]
)
