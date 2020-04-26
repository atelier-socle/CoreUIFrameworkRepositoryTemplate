//
//  ViewStyle.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

/// The different view style available.
public enum ViewStyle: CaseIterable {
    /// The color for the main background of your interface.
    case background
    /// Style for thin borders or divider lines that allows some underlying content to be visible.
    case separator
    /// A style with grayscale and alpha values that are both 0.0.
    case clear
}

// MARK: - TintColors

extension ViewStyle {

    public var backgroundColor: UIColor {
        switch self {
        case .background:
            return ColorCompatibility.systemBackground
        case .separator:
            return ColorCompatibility.separator
        case .clear:
            return .clear
        }
    }

}
