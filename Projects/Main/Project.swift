import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "Main",
    targets: [
        Target(
            name: "MainExample",
            platform: .iOS,
            product: .app,
            bundleId: "MainExampleApp",
            infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
            sources: ["Example/**"],
            dependencies: [
                .target(name: "MainFeature"),
                .target(name: "MainTesting"),
                .project(target: "CounterFeature", path: .relativeToRoot("Projects/Counter")),
                .project(target: "CounterTesting", path: .relativeToRoot("Projects/Counter")),
                .project(target: "MaximFeature", path: .relativeToRoot("Projects/Maxim")),
                .project(target: "MaximTesting", path: .relativeToRoot("Projects/Maxim"))
            ]
        ),
        Target(
            name: "MainInterface",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Interface/**"]
        ),
        Target(
            name: "MainFeature",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Feature/**"],
            dependencies: [
                .target(name: "MainInterface"),
                .project(target: "CounterInterface", path: .relativeToRoot("Projects/Counter")),
                .project(target: "MaximInterface", path: .relativeToRoot("Projects/Maxim"))
            ]
        ),
        Target(
            name: "MainTests",
            platform: .iOS,
            product: .unitTests,
            bundleId: "",
            sources: ["Tests/**"],
            dependencies: [
                .target(name: "MainFeature"),
                .target(name: "MainTesting"),
                .project(target: "CounterFeature", path: .relativeToRoot("Projects/Counter")),
                .project(target: "CounterTesting", path: .relativeToRoot("Projects/Counter")),
                .project(target: "MaximFeature", path: .relativeToRoot("Projects/Maxim")),
                .project(target: "MaximTesting", path: .relativeToRoot("Projects/Maxim"))
            ]
        ),
        Target(
            name: "MainTesting",
            platform: .iOS,
            product: .staticLibrary,
            bundleId: "",
            sources: ["Testing/**"],
            dependencies: [
                .target(name: "MainInterface"),
                .project(target: "CounterInterface", path: .relativeToRoot("Projects/Counter")),
                .project(target: "MaximInterface", path: .relativeToRoot("Projects/Maxim"))
            ]
        )
    ]
)
