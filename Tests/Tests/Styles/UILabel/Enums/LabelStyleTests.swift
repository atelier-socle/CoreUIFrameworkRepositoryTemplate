//
//  LabelStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class LabelStyleTests: XCTestCase {

}

// MARK: - AllCases

extension LabelStyleTests {

    func testAllCases() {
        XCTAssertEqual(LabelStyle.allCases.count, 4)
    }

}

// MARK: - Tests Text Color

extension LabelStyleTests {

    func testTextColor() {
        LabelStyle.allCases.forEach {
            let expectedColor: UIColor
            switch $0 {
            case let .font(color, _, _):
                expectedColor = color.textColor
            }
            XCTAssertEqual($0.textColor, expectedColor)
        }
    }

}

// MARK: - Fonts

extension LabelStyleTests {

    func testTextStyle() {
        LabelStyle.allCases.forEach {
            let textStyle: UIFont.TextStyle
            switch $0 {
            case .font:
                textStyle = .body
            }
            XCTAssertEqual($0.textStyle, textStyle)
        }
    }

    func testSymbolicTraits() {
        LabelStyle.allCases.forEach {
            let symbolicTraits: UIFontDescriptor.SymbolicTraits?
            switch $0 {
            case .font:
                symbolicTraits = .traitBold
            }
            XCTAssertEqual($0.symbolicTraits, symbolicTraits)
        }
    }

}
