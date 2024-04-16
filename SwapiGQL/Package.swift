// swift-tools-version:5.7

import PackageDescription

let package = Package(
  name: "SwapiGQL",
  platforms: [
    .iOS(.v12),
    .macOS(.v10_14),
    .tvOS(.v12),
    .watchOS(.v5),
  ],
  products: [
    .library(name: "SwapiGQL", targets: ["SwapiGQL"]),
    .library(name: "GQLMocks", targets: ["GQLMocks"]),
  ],
  dependencies: [
    .package(url: "https://github.com/apollographql/apollo-ios.git", from: "1.0.0"),
  ],
  targets: [
    .target(
      name: "SwapiGQL",
      dependencies: [
        .product(name: "ApolloAPI", package: "apollo-ios"),
      ],
      path: "./Sources"
    ),
    .target(
      name: "GQLMocks",
      dependencies: [
        .product(name: "ApolloTestSupport", package: "apollo-ios"),
        .target(name: "SwapiGQL"),
      ],
      path: "./GQLMocks"
    ),
  ]
)
