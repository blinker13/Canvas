// swift-tools-version:5.3
import PackageDescription

_ = Package(
	name: "Canvas",

	products: [
		.library(name: "Canvas", targets: ["Canvas"])
	],

	dependencies:[
		.package(url: "https://github.com/blinker13/Geometry.git", from: "0.0.5")
	],

	targets: [
		.target(name: "Canvas", dependencies: ["Geometry"], path: "Sources"),
		.testTarget(name: "Tests", dependencies: ["Canvas"], path: "Tests")
	]
)
