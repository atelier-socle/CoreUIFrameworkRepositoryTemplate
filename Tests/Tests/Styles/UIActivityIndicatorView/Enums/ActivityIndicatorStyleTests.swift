//
//  ActivityIndicatorStyleTests.swift
//  MyCoreUIFrameworkTests
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import XCTest
import MyCoreUIFramework

final class ActivityIndicatorStyleTests: XCTestCase {

}

// MARK: - Style

extension ButtonStyleTests {

    func testActivityIndicatorStyle() {
        ActivityIndicatorStyle.allCases.forEach {
            let style: UIActivityIndicatorView.Style
            switch $0 {
            case .gray:
                style = .gray
            case .large:
                if #available(iOS 13.0, *) {
                    style = .large
                } else {
                    style = .whiteLarge
                }
            case .medium:
                if #available(iOS 13.0, *) {
                    style = .medium
                } else {
                    style = .white
                }
            }
            XCTAssertEqual($0.style, style)
        }
    }

}

// MARK: - Hides when stopped

extension ButtonStyleTests {

    func testActivityIndicatorHidesWhenStopped_large() {
        ActivityIndicatorStyle.allCases.forEach {
            XCTAssertTrue($0.hidesWhenStopped)
        }

    }

}
