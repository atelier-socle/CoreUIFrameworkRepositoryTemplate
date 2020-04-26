//
//  ColorCompatibilityTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import XCTest
@testable import MyCoreUIFramework

final class ColorCompatibilityTests: XCTestCase {

    // MARK: Properties

    private var colors = [UIColor]()
    private var literalColors = [UIColor]()

    // swiftlint:disable all
    override func setUp() {
        super.setUp()
        colors = [ColorCompatibility.label,
                  ColorCompatibility.secondaryLabel,
                  ColorCompatibility.tertiaryLabel,
                  ColorCompatibility.quaternaryLabel,
                  ColorCompatibility.systemFill,
                  ColorCompatibility.secondarySystemFill,
                  ColorCompatibility.tertiarySystemFill,
                  ColorCompatibility.quaternarySystemFill,
                  ColorCompatibility.placeholderText,
                  ColorCompatibility.systemBackground,
                  ColorCompatibility.secondarySystemBackground,
                  ColorCompatibility.tertiarySystemBackground,
                  ColorCompatibility.systemGroupedBackground,
                  ColorCompatibility.secondarySystemGroupedBackground,
                  ColorCompatibility.tertiarySystemGroupedBackground,
                  ColorCompatibility.separator,
                  ColorCompatibility.opaqueSeparator,
                  ColorCompatibility.link,
                  ColorCompatibility.darkText,
                  ColorCompatibility.lightText,
                  ColorCompatibility.systemBlue,
                  ColorCompatibility.systemGreen,
                  ColorCompatibility.systemIndigo,
                  ColorCompatibility.systemOrange,
                  ColorCompatibility.systemPink,
                  ColorCompatibility.systemPurple,
                  ColorCompatibility.systemRed,
                  ColorCompatibility.systemTeal,
                  ColorCompatibility.systemYellow,
                  ColorCompatibility.systemGray,
                  ColorCompatibility.systemGray2,
                  ColorCompatibility.systemGray3,
                  ColorCompatibility.systemGray4,
                  ColorCompatibility.systemGray5,
                  ColorCompatibility.systemGray6]

        if #available(iOS 13.0, *) {
            literalColors = [UIColor.label,
                             UIColor.secondaryLabel,
                             UIColor.tertiaryLabel,
                             UIColor.quaternaryLabel,
                             UIColor.systemFill,
                             UIColor.secondarySystemFill,
                             UIColor.tertiarySystemFill,
                             UIColor.quaternarySystemFill,
                             UIColor.placeholderText,
                             UIColor.systemBackground,
                             UIColor.secondarySystemBackground,
                             UIColor.tertiarySystemBackground,
                             UIColor.systemGroupedBackground,
                             UIColor.secondarySystemGroupedBackground,
                             UIColor.tertiarySystemGroupedBackground,
                             UIColor.separator,
                             UIColor.opaqueSeparator,
                             UIColor.link,
                             UIColor.darkText,
                             UIColor.lightText,
                             UIColor.systemBlue,
                             UIColor.systemGreen,
                             UIColor.systemIndigo,
                             UIColor.systemOrange,
                             UIColor.systemPink,
                             UIColor.systemPurple,
                             UIColor.systemRed,
                             UIColor.systemTeal,
                             UIColor.systemYellow,
                             UIColor.systemGray,
                             UIColor.systemGray2,
                             UIColor.systemGray3,
                             UIColor.systemGray4,
                             UIColor.systemGray5,
                             UIColor.systemGray6]
        } else {
            literalColors = [UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),
                             UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.6),
                             UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3),
                             UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.18),
                             UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.2),
                             UIColor(red: 0.47058823529411764, green: 0.47058823529411764, blue: 0.5019607843137255, alpha: 0.16),
                             UIColor(red: 0.4627450980392157, green: 0.4627450980392157, blue: 0.5019607843137255, alpha: 0.12),
                             UIColor(red: 0.4549019607843137, green: 0.4549019607843137, blue: 0.5019607843137255, alpha: 0.08),
                             UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.3),
                             UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                             UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0),
                             UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                             UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0),
                             UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0),
                             UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0),
                             UIColor(red: 0.23529411764705882, green: 0.23529411764705882, blue: 0.2627450980392157, alpha: 0.29),
                             UIColor(red: 0.7764705882352941, green: 0.7764705882352941, blue: 0.7843137254901961, alpha: 1.0),
                             UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1.0),
                             UIColor(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0),
                             UIColor(red: 1.0, green: 1.0, blue: 1.0, alpha: 0.6),
                             UIColor(red: 0.0, green: 0.47843137254901963, blue: 1.0, alpha: 1.0),
                             UIColor(red: 0.6352941176470588, green: 0.5176470588235295, blue: 0.3686274509803922, alpha: 1.0),
                             UIColor(red: 0.20392156862745098, green: 0.7803921568627451, blue: 0.34901960784313724, alpha: 1.0),
                             UIColor(red: 0.34509803921568627, green: 0.33725490196078434, blue: 0.8392156862745098, alpha: 1.0),
                             UIColor(red: 1.0, green: 0.5843137254901961, blue: 0.0, alpha: 1.0),
                             UIColor(red: 1.0, green: 0.17647058823529413, blue: 0.3333333333333333, alpha: 1.0),
                             UIColor(red: 0.6862745098039216, green: 0.3215686274509804, blue: 0.8705882352941177, alpha: 1.0),
                             UIColor(red: 1.0, green: 0.23137254901960785, blue: 0.18823529411764706, alpha: 1.0),
                             UIColor(red: 0.35294117647058826, green: 0.7843137254901961, blue: 0.9803921568627451, alpha: 1.0),
                             UIColor(red: 1.0, green: 0.8, blue: 0.0, alpha: 1.0),
                             UIColor(red: 0.5568627450980392, green: 0.5568627450980392, blue: 0.5764705882352941, alpha: 1.0),
                             UIColor(red: 0.6823529411764706, green: 0.6823529411764706, blue: 0.6980392156862745, alpha: 1.0),
                             UIColor(red: 0.7803921568627451, green: 0.7803921568627451, blue: 0.8, alpha: 1.0),
                             UIColor(red: 0.8196078431372549, green: 0.8196078431372549, blue: 0.8392156862745098, alpha: 1.0),
                             UIColor(red: 0.8980392156862745, green: 0.8980392156862745, blue: 0.9176470588235294, alpha: 1.0),
                             UIColor(red: 0.9490196078431372, green: 0.9490196078431372, blue: 0.9686274509803922, alpha: 1.0)]
        }
    }
    // swiftlint:enable all

    override func tearDown() {
        colors = []
        literalColors = []
        super.tearDown()
    }

}

// MARK: - Tests

extension ColorCompatibilityTests {

    func testColorCompatibilityMatch() {
        for (idx, color) in colors.enumerated() {
            XCTAssertEqual(literalColors[idx], color)
        }
    }

    func testColorCompatibilityMatch_forColorSpace() {
        for (idx, color) in colors.enumerated() {
            XCTAssertEqual(literalColors[idx].cgColor.colorSpace, color.cgColor.colorSpace)
            XCTAssertEqual(literalColors[idx].cgColor.numberOfComponents, color.cgColor.numberOfComponents)
            let model = color.cgColor.colorSpace?.baseColorSpace?.model
            XCTAssertEqual(literalColors[idx].cgColor.colorSpace?.baseColorSpace?.model, model)
        }
    }

    func testColorCompatibilityMatch_forAlpha() {
        for (idx, color) in colors.enumerated() {
            XCTAssertEqual(literalColors[idx].cgColor.alpha, color.cgColor.alpha)
        }
    }

}
