import ProjectDescription
import ProjectDescriptionHelpers
import MyPlugin

let project = Project(
    name: "MFA",
    targets: [Target(
        name: "MFA",
        platform: .iOS,
        product: .app,
        bundleId: "1020MFA",
		infoPlist: .extendingDefault(with: ["UILaunchScreen": ""]),
        sources: ["Sources/**"],
        resources: ["Resources/**"],
        dependencies: [
            .project(target: "MainFeature",
                     path: .relativeToRoot("Projects/Main")),
            .project(target: "MainTesting",
                     path: .relativeToRoot("Projects/Main")),
            .project(target: "CounterFeature",
                     path: .relativeToRoot("Projects/Counter")),
            .project(target: "CounterTesting",
                     path: .relativeToRoot("Projects/Counter")),
            .project(target: "MaximFeature",
                     path: .relativeToRoot("Projects/Maxim")),
            .project(target: "MaximTesting",
                     path: .relativeToRoot("Projects/Maxim")),
        ]
    )]
)
