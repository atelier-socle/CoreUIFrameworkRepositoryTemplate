//
//  ViewStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
import MyCoreUIFramework

final class UIViewExtensionStyleTests: XCTestCase {

    // MARK: Properties

    private var viewStyles = ViewStyle.allCases

    private lazy var view: UIView? = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        return view
    }()

    // MARK: Life Cycle

    override func setUp() {
        super.setUp()
    }

    override func tearDown() {
        view = nil
        super.tearDown()
    }

}

// MARK: - Tests Style

extension UIViewExtensionStyleTests {

    func testViewStyle_beforeSettingIt() {
        XCTAssertNil(view?.vStyle)
    }

    func testViewStyles() {
        let view = UIView(frame: .zero)
        viewStyles.forEach {
            view.vStyle = $0
            XCTAssertNotNil(view.vStyle)
            XCTAssertEqual(view.backgroundColor, view.vStyle?.backgroundColor)
        }
    }
}
