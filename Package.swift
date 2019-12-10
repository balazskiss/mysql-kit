// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "MySQL",
    products: [
        .library(name: "MySQL", targets: ["MySQL"])
    ],
    dependencies: [
        // Module map for `libmysql`
        .Package(url: "https://github.com/vapor/cmysql.git", from: "2.0.2"),

        // Data structure for converting between multiple representations
        .Package(url: "https://github.com/vapor/node.git", from: "2.1.5"),

        // Core extensions, type-aliases, and functions that facilitate common tasks
        .Package(url: "https://github.com/vapor/core.git", from: "2.2.1"),

        // JSON parsing and serialization for storing arrays and objects in MySQL
        .Package(url: "https://github.com/vapor/json.git", from: "2.2.2"),
    ],
    targets: [
        .target(name: "MySQL", dependencies: ["CMySQL", "Node", "Core", "JSON"])
    ]
)
