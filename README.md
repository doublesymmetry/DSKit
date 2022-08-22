# DSKit

## Requirements

## Installation

Swift Package Manager is a tool for managing the distribution of Swift code. It’s integrated with the Swift build system to automate the process of downloading, compiling, and linking dependencies.

To integrate DSKit into your Xcode project using Swift Package Manager, add it to the dependencies value of your Package.swift:

dependencies: [
     .package(url: "git@github.com:DoubleSymmetry/DSKit.git", .upToNextMajor(from: "0.0.1"))
]

Make sure you are having a SSH key of type RSA.
Be aware that DSKit is a private Repository.

## Creating a new version

To create a new version, follow these steps:
1. Tag latest commit with the new version number, e.g. **0.1.3**.
2. Publish the tag.
3. In a project that uses DSKit, have SPM try to update the dependency.

## Author

fabiandoublesymmetry, fabian@doublesymmetry.com

## License

DSKit is available under the MIT license. See the LICENSE file for more info.
