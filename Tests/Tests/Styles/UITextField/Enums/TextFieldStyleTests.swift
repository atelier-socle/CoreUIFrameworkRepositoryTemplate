//
//  TextFieldStyleTests.swift
//  MyCoreUIFramework_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class TextFieldStyleTests: XCTestCase {

}

// MARK: - AllCases

extension TextFieldStyleTests {

    func testAllCases() {
        XCTAssertEqual(TextFieldStyle.allCases.count, 4)
    }

}

// MARK: - Tests Text Color

extension TextFieldStyleTests {

    func testTextColor() {
        TextFieldStyle.allCases.forEach {
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

extension TextFieldStyleTests {

    func testTextStyle() {
        TextFieldStyle.allCases.forEach {
            let textStyle: UIFont.TextStyle
            switch $0 {
            case .font:
                textStyle = .body
            }
            XCTAssertEqual($0.textStyle, textStyle)
        }
    }

    func testSymbolicTraits() {
        TextFieldStyle.allCases.forEach {
            let symbolicTraits: UIFontDescriptor.SymbolicTraits?
            switch $0 {
            case .font:
                symbolicTraits = .traitBold
            }
            XCTAssertEqual($0.symbolicTraits, symbolicTraits)
        }
    }

}
