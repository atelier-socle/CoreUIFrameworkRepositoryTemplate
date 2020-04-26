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

final class UILabelStyleTests: XCTestCase {

    // MARK: Properties

    private var labelStyles: [LabelStyle] {
        LabelStyle.allCases
    }

    private lazy var label: UILabel = {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: 100, height: 20))
        label.text = "test"
        return label
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

extension UILabelStyleTests {

    func testLabelStyle_beforeSettingIt() {
        XCTAssertNil(label.style, "label style must be nil per default")
    }

    func testLabelStyles() {
        labelStyles.forEach {
            label.style = $0
            XCTAssertNotNil(label.style)
            XCTAssertEqual(label.textColor, $0.textColor)
        }
    }

}
