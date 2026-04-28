// swift-tools-version: 5.8

import PackageDescription

let package = Package(
	name: "H3kit",
	products: [
		.library(
			name: "H3kit",
			targets: ["H3kit"]
		),
	],
	targets: [
		.target(
			name: "h3lib",
			dependencies: [],
			path: "Sources/h3lib",
			publicHeadersPath: "include"
		),
		.target(
			name: "H3kit",
			dependencies: [
				.target(name: "h3lib"),
			],
			path: "Sources/swift"
		),
		.testTarget(
			name: "H3kitTests",
			dependencies: [
				.target(name: "H3kit"),
			]
		),
	]
)