// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "MySQL",
    products: [
        .library(name: "MySQL", targets: ["MySQL"])
    ],
    dependencies: [
        // Module map for `libmysql`
        .package(url: "https://github.com/balazskiss/cmysql.git", from: "2.0.3"),

        // Data structure for converting between multiple representations
        .package(url: "https://github.com/vapor/node.git", from: "2.1.5"),

        // Core extensions, type-aliases, and functions that facilitate common tasks
        .package(url: "https://github.com/vapor/core.git", from: "2.2.1"),

        // JSON parsing and serialization for storing arrays and objects in MySQL
        .package(url: "https://github.com/vapor/json.git", from: "2.2.2"),
    ],
    targets: [
        .target(name: "MySQL", dependencies: ["CMySQL", "Node", "Core", "JSON"])
    ]
)
