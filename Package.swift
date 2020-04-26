// swift-tools-version:5.1

import PackageDescription

let package = Package(name: "MyCoreUIFramework",
                      platforms: [.macOS(.v10_15),
                                  .iOS(.v13),
                                  .tvOS(.v13),
                                  .watchOS(.v6)],
                      products: [.library(name: "MyCoreUIFramework",
                                          targets: ["MyCoreUIFramework"])],
                      targets: [.target(name: "MyCoreUIFramework",
                                        path: "Sources")],
                      swiftLanguageVersions: [.v5])
