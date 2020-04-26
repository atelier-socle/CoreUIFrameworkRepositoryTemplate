//
//  UIButtonExtensionStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class UIButtonExtensionStyleTests: XCTestCase {

    // MARK: Properties

    private var buttonStyles = ButtonStyle.allCases

    private lazy var button: UIButton = {
        UIButton(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
    }()

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        button.style = nil
        super.tearDown()
    }
}

// MARK: - Styles

extension UIButtonExtensionStyleTests {

    func testButtonStyle_beforeSettingIt() {
        XCTAssertNil(button.style, "button style must be nil per default")
    }

    func testButtonStyles() {
        buttonStyles.forEach {
            button.style = $0
            XCTAssertNotNil(button.style)
            XCTAssertEqual(button.titleColor(for: .normal), $0.titleColor)
            XCTAssertEqual(button.titleColor(for: .disabled), $0.disabledTitleColor)
            XCTAssertNotNil(button.backgroundImage(for: .normal))
            XCTAssertNil(button.image(for: .highlighted))
            XCTAssertNil(button.image(for: .disabled))
        }
    }

}

// MARK: - Highlighted

extension UIButtonExtensionStyleTests {

    func testButtonStyles_isHighlighted() {
        let style = ButtonStyle.example(.body, nil)
        button.style = style
        button.setImage(UIImage(), for: .normal)
        button.isHighlighted = true
        XCTAssertEqual(button.imageView?.alpha, 0.5)
        XCTAssertNotNil(button.backgroundImage(for: .highlighted))

        button.isHighlighted = false
        XCTAssertEqual(button.imageView?.alpha, 1)
    }

    func testButtonStyles_isHighlighted_withoutStyle() {
        button.style = nil
        let backgroundColor = button.backgroundColor
        button.isHighlighted = true
        XCTAssertEqual(button.alpha, 1)
        XCTAssertNil(button.image(for: .highlighted))
        XCTAssertEqual(button.backgroundColor, backgroundColor)
    }

}

// MARK: - Enabled

extension UIButtonExtensionStyleTests {

    func testButtonStyles_isEnabled() {
        let style = ButtonStyle.example(.body, nil)
        button.style = style
        button.setImage(UIImage(), for: .normal)
        button.isEnabled = true
        XCTAssertNotNil(button.image(for: .normal))

        button.isEnabled = false
        XCTAssertNotNil(button.image(for: .disabled))
    }

    func testButtonStyles_isEnabled_withoutStyle() {
        button.style = nil
        let backgroundColor = button.backgroundColor
        button.isEnabled = false
        XCTAssertEqual(button.backgroundColor, backgroundColor)
    }

}
