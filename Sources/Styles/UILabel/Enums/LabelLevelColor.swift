//
//  LabelLevelColor.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

/// Enumerate the different color level available for a label.
public enum LabelLevelColor: CaseIterable {
    /// The color for text labels that contain primary content.
    case primary
    /// The color for text labels that contain primary content.
    case secondary
    /// The color for text labels that contain tertiary content.
    case tertiary
    /// The color for text labels that contain tertiary content.
    case quaternary
}

// MARK: - Colors

extension LabelLevelColor {

    /// The text color that will be applied for the specific style.
    public var textColor: UIColor {
        switch self {
        case .primary:
            return ColorCompatibility.label
        case .secondary:
            return ColorCompatibility.secondaryLabel
        case .tertiary:
            return ColorCompatibility.tertiaryLabel
        case .quaternary:
            return ColorCompatibility.quaternaryLabel
        }
    }

}
