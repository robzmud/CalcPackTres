// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "CalcPackTres",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "CalcPackTres",
            targets: ["CalcPackTres"]),
    ],
    dependencies: [
      .package(
        url: "https://github.com/stephencelis/SQLite.swift.git",
        .upToNextMinor(from: "0.13.1")),
        .package(url: "https://github.com/robzmud/CalcPackDos.git", branch: "master")
//      .package(url: "https://bitbucket.org/phxroberts/calcpackdos.git", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "CalcPackTres",
            dependencies: [
                .product(name: "CalcPackDos", package: "CalcPackDos"),
                .product(name: "SQLite", package: "SQLite.swift")
            ]),
        .testTarget(
            name: "CalcPackTresTests",
            dependencies: ["CalcPackTres"]),
    ]
)
