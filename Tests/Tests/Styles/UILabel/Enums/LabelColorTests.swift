//
//  LabelLevelColorTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import XCTest
@testable import MyCoreUIFramework

final class LabelLevelColorTests: XCTestCase {

}

// MARK: - Style Primary

extension ViewStyleTests {

    func testPrimary_textColor() {
        XCTAssertEqual(LabelLevelColor.primary.textColor,
                       ColorCompatibility.label)
    }

}

// MARK: - Style Secondary

extension ViewStyleTests {

    func testSecondary_textColor() {
        XCTAssertEqual(LabelLevelColor.secondary.textColor,
                       ColorCompatibility.secondaryLabel)
    }

}

// MARK: - Style Tertiary

extension ViewStyleTests {

    func testTertiary_textColor() {
        XCTAssertEqual(LabelLevelColor.tertiary.textColor,
                       ColorCompatibility.tertiaryLabel)
    }

}

// MARK: - Style Quaternary

extension ViewStyleTests {

    func testQuaternary_textColor() {
        XCTAssertEqual(LabelLevelColor.quaternary.textColor,
                       ColorCompatibility.quaternaryLabel)
    }

}
