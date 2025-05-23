// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ht-common-ui",
    platforms: [
           .iOS(.v13),
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "ht-common-ui",
            targets: ["ht-common-ui"]),
    ],
    dependencies: [
      .package(url: "https://github.com/pointfreeco/swift-dependencies", from: "1.4.0"),
      .package(url: "https://github.com/nalexn/ViewInspector.git", from: "0.9.0"),  // ViewInspector 패키지 추가
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .target(
            name: "ht-common-ui",
            dependencies: [],
            resources: [
                .process("Resources")  // 리소스 처리
            ]
        ),
        .testTarget(
                    name: "htcommon-uiTests",
                    dependencies: [
                        "ht-common-ui",
                        .product(name: "ViewInspector", package: "ViewInspector")
                                  ]
        ),
    ]
)
