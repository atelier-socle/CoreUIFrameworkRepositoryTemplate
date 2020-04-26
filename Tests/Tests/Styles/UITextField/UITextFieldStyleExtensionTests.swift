//
//  UITextFieldStyleExtension+Tests.swift
//  MyCoreUIFrameworkTests_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class UITextFieldStyleTests: XCTestCase {

    // MARK: Properties

    private var textFieldStyles: [TextFieldStyle] {
        TextFieldStyle.allCases
    }

    private lazy var textField: UITextField = {
        let textField = UITextField(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        textField.text = "test"
        return textField
    }()

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        super.tearDown()
    }

}

// MARK: - Tests Style

extension UITextFieldStyleTests {

    func testTextFieldStyle_beforeSettingIt() {
        XCTAssertNil(textField.style, "textField style must be nil per default")
    }

    func testTextFieldStyles() {
        TextFieldStyle.allCases.forEach {
            textField.style = $0
            XCTAssertNotNil(textField.style)
            XCTAssertEqual(textField.textColor, $0.textColor)
        }
    }

}
