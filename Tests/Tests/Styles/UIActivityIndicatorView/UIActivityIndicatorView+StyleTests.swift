//
//  UIActivityIndicatorView+StyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
import MyCoreUIFramework

final class UIActivityIndicatorViewStyleTests: XCTestCase {

    // MARK: Properties

    private var activityIndicatorStyles = ActivityIndicatorStyle.allCases

    private lazy var activityIndicator: UIActivityIndicatorView = {
        UIActivityIndicatorView(style: .gray)
    }()

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        activityIndicator.aStyle = nil
        super.tearDown()
    }
}

// MARK: - Styles

extension UIActivityIndicatorViewStyleTests {

    func testActivityIndicatorStyle_beforeSettingIt() {
        XCTAssertNil(activityIndicator.aStyle, "button style must be nil per default")
    }

    func testButtonStyles() {
        activityIndicatorStyles.forEach {
            activityIndicator.aStyle = $0
            XCTAssertNotNil(activityIndicator.aStyle)
        }
    }

}
