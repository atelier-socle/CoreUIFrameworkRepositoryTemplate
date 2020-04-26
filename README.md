[![Lint Status](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/workflows/SwiftLint/badge.svg)](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/actions)
[![iOS Status](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/workflows/MyCoreUIFramework%20iOS%20CI/badge.svg)](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/actions)

## CoreUIFrameworkRepositoryTemplate

`CoreUICoreUIFrameworkRepositoryTemplate` is the starting point of every new CoreUI framework made by `Atelier Socle`. After a lot of doing and redoing project setup, configuration, ... we finally decided to make our own template to have a project / repository with our full basic configuration with just a few command lines. It includes:

- A script to make your repository **ready to work in less than 5 minutes**
- An auto-generated `xcodeproj` (thanks to [XcodeGen](https://github.com/yonaskolb/XcodeGen)).
- [SwiftLint ](https://github.com/realm/SwiftLint) ready to warn with its configuration file
- A [Mintfile](https://github.com/yonaskolb/Mint) to easily handle handle swift tools
- All the basic documentation: [README](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/blob/master/README_future.md), [CHANGELOG](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/blob/master/CHANGELOG.md), ...
- [Github Actions](https://help.github.com/en/actions) setup to build, tests,
- Basic themes and styles ready to be used, documented and tested.
- ...

**Note:** Since it's just a template, it will just give basics setup, it's the developer work to finish the configuration before finalizing it's application.

## Usage

Have a full repository setup ready to be used in a few steps:

- Run `sh prepare_repository.sh {REPO_NAME} {NEW_REPO_PATH}`
- Start working on your app!

From here, you will have only to configure the project to match your need:

- Read the new [README](https://github.com/atelier-socle/CoreUIFrameworkRepositoryTemplate/blob/master/README_future.md) to start working on your project
- Remove targets that you won't need in the `XcodeGen` configuration
- ...

## Contributions

Pull requests and issues are always welcome. Please open any issues and PRs for bugs, features, or documentation. Note that we keep the right to reject any PRs that we don't feel to integrate in future `Atelier Socle` project.

## License

`CoreUIFrameworkRepositoryTemplate` is licensed under the MIT license. See LICENSE for more info.
