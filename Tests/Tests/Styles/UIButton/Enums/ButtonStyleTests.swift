//
//  ButtonStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class ButtonStyleTests: XCTestCase {

}

// MARK: - Background Color

extension ButtonStyleTests {

    func testBackgroundColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = ColorCompatibility.systemGreen
            }
            XCTAssertEqual($0.backgroundColor, color)
        }
    }

}

// MARK: - Text Color

extension ButtonStyleTests {

    func testTitleColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = ColorCompatibility.label
            }
            XCTAssertEqual($0.titleColor, color)
        }
    }

}

// MARK: - Highlighed Background Color

extension ButtonStyleTests {

    func testHighlighedBackgroundColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = $0.backgroundColor
            }
            XCTAssertEqual($0.highlightBackgroundColor, color)
        }
    }

}

// MARK: - Highlighed Title Color

extension ButtonStyleTests {

    func testHighlighedTitleColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = $0.titleColor.withAlphaComponent(0.5)
            }
            XCTAssertEqual($0.highlightedTitleColor, color)
        }
    }

}

// MARK: - Disabled Background Color

extension ButtonStyleTests {

    func testDisabledBackgroundColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = $0.backgroundColor
            }
            XCTAssertEqual($0.disabledBackgroundColor, color)
        }
    }

}

// MARK: - Disabled Title Color

extension ButtonStyleTests {

    func testDisabledTitleColor() {
        ButtonStyle.allCases.forEach {
            let color: UIColor
            switch $0 {
            case .image:
                color = .clear
            case .example:
                color = $0.titleColor.withAlphaComponent(0.5)
            }
            XCTAssertEqual($0.disabledTitleColor, color)
        }
    }
}

// MARK: - TintColor

extension ButtonStyleTests {

    func testTintColor() {
        ButtonStyle.allCases.forEach {
            let tintColor: UIColor
            switch $0 {
            case .image, .example:
                tintColor = Asset.example.color
            }
            XCTAssertEqual($0.tintColor, tintColor)
        }
    }
}

// MARK: - Disabled Corner Radius

extension ButtonStyleTests {

    func testDisabledCornerRadius() {
        ButtonStyle.allCases.forEach {
            let cornerRadius: CGFloat
            switch $0 {
            case .image:
                cornerRadius = 0
            case .example:
                cornerRadius = 12.5
            }
            XCTAssertEqual($0.cornerRadius(height: 50), cornerRadius)
        }
    }
}

// MARK: - Fonts

extension ButtonStyleTests {

    func testTextStyle() {
        ButtonStyle.allCases.forEach {
            let textStyle: UIFont.TextStyle
            switch $0 {
            case .image:
                textStyle = .body
            case .example:
                textStyle = .body
            }
            XCTAssertEqual($0.textStyle, textStyle)
        }
    }

    func testSymbolicTraits() {
        ButtonStyle.allCases.forEach {
            let symbolicTraits: UIFontDescriptor.SymbolicTraits?
            switch $0 {
            case .image:
                symbolicTraits = nil
            case .example:
                symbolicTraits = .traitBold
            }
            XCTAssertEqual($0.symbolicTraits, symbolicTraits)
        }
    }

}

// MARK: - Content Insets

extension ButtonStyleTests {

    func testContentInsets() {
        ButtonStyle.allCases.forEach {
            let contentInsets: UIEdgeInsets
            switch $0 {
            case .image:
                contentInsets = .zero
            case .example:
                contentInsets = UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
            }
            XCTAssertEqual($0.contentInsets, contentInsets)
        }
    }

}
