//
//  UITextViewStyleExtension+Tests.swift
//  MyCoreUIFrameworkTests_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit
import XCTest
@testable import MyCoreUIFramework

final class UITextViewStyleTests: XCTestCase {

    // MARK: Properties

    private var textViewStyles: [TextViewStyle] {
        TextViewStyle.allCases
    }

    private lazy var textView: UITextView = {
        let textView = UITextView(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        textView.text = "test"
        return textView
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

extension UITextViewStyleTests {

    func testTextViewStyle_beforeSettingIt() {
        XCTAssertNil(textView.style, "textView style must be nil per default")
    }

    func testTextViewStyles() {
        TextViewStyle.allCases.forEach {
            textView.style = $0
            XCTAssertNotNil(textView.style)
            XCTAssertEqual(textView.textColor, $0.textColor)
        }
    }

}
