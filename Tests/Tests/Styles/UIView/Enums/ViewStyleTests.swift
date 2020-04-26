//
//  ViewStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class ViewStyleTests: XCTestCase {

}

// MARK: - Style Background

extension ViewStyleTests {

    func testBackground_backgroundColor() {
        XCTAssertEqual(ViewStyle.background.backgroundColor,
                       ColorCompatibility.systemBackground)
    }

}

// MARK: - Style Separator

extension ViewStyleTests {

    func testStyleSeparator_backgroundColor() {
        XCTAssertEqual(ViewStyle.separator.backgroundColor,
                       ColorCompatibility.separator)
    }

}

// MARK: - Style Clear

extension ViewStyleTests {

    func testStyleClear_backgroundColor() {
        XCTAssertEqual(ViewStyle.clear.backgroundColor, .clear)
    }

}
