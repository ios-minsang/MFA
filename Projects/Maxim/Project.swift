import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "Maxim",
    targets: [
        Target(
            name: "MaximExample",
            platform: .iOS,
            product: .app,
            bundleId: "MaximExampleApp",
            infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
            sources: ["Example/**"],
            dependencies: [
                .target(name: "MaximFeature"),
                .target(name: "MaximTesting")
            ]
        ),
        Target(
            name: "MaximInterface",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Interface/**"]
        ),
        Target(
            name: "MaximFeature",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Feature/**"],
            dependencies: [
                .target(name: "MaximInterface")
            ]
        ),
        Target(
            name: "MaximTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "MaximFeature"),
                .target(name: "MaximTesting")
            ]
        ),
        Target(
            name: "MaximTesting",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Testing/**"],
            dependencies: [
                .target(name: "MaximInterface")
            ]
        )
    ]
)
