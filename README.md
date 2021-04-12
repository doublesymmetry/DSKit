# DSKit

[![CI Status](https://img.shields.io/travis/fabiandoublesymmetry/DSKit.svg?style=flat)](https://travis-ci.org/fabiandoublesymmetry/DSKit)
[![Version](https://img.shields.io/cocoapods/v/DSKit.svg?style=flat)](https://cocoapods.org/pods/DSKit)
[![License](https://img.shields.io/cocoapods/l/DSKit.svg?style=flat)](https://cocoapods.org/pods/DSKit)
[![Platform](https://img.shields.io/cocoapods/p/DSKit.svg?style=flat)](https://cocoapods.org/pods/DSKit)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

DSKit is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'DSKit'
```

## Creating a new version

To create a new version, follow these steps:
1. Open the **.podspec**-file in the projects directory with a text editor.
2. Increase the minor version number next to **s.version** (If the last version was **0.1.2**, then the new folder should be called **0.1.3**).
3. Commit the changes.
4. Tag the commit with the new version number, e.g. **0.1.3**.
5. Publish the tag.
6. Github Actions will automatically deploy a new version! :rocket:
7. Finally do a **pod update** on project that has DSKit as a depdendency. :sparkles:

## Author

fabiandoublesymmetry, fabian@doublesymmetry.com

## License

DSKit is available under the MIT license. See the LICENSE file for more info.
