import PackageDescription

let package = Package(
    name: "MonoGenerator",
    dependencies: [
        .Package(url: "git@github.com:kylef/Commander.git",
                 majorVersion: 0),
        ]
)
