//
//  ButtonTheme.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

/// The different button style available.
public enum ButtonStyle {
    /// A button that have only an image and no text
    case image
    /// An style example on how to have a style with custom font, traits, and color.
    case example(UIFont.TextStyle, UIFontDescriptor.SymbolicTraits? = nil)

    static var allCases: [ButtonStyle] {
        [.image, .example(.body, .traitBold)]
    }
}

// MARK: - Colors Normal

extension ButtonStyle {

    /// The background color that will be applied to the button for a specific style.
    public var backgroundColor: UIColor {
        switch self {
        case .image:
            return .clear
        case .example:
            return ColorCompatibility.systemGreen
        }
    }

    /// The title color that will be applied to the button for a specific style.
    public var titleColor: UIColor {
        switch self {
        case .image:
            return .clear
        case .example:
            return ColorCompatibility.label
        }
    }

}

// MARK: - Colors Highlighed

extension ButtonStyle {

    /// The highlight background color that will be applied to the button for a specific style.
    public var highlightBackgroundColor: UIColor {
        switch self {
        case .image:
            return .clear
        case .example:
            return backgroundColor
        }
    }

    /// The highlight title color that will be applied to the button for a specific style.
    public var highlightedTitleColor: UIColor {
        switch self {
        case .image:
            return .clear
        case .example:
            return titleColor.withAlphaComponent(0.5)
        }
    }

}

// MARK: - Colors Disabled

extension ButtonStyle {

    /// The disabled background color that will be applied to the button for a specific style.
    public var disabledBackgroundColor: UIColor {
        switch self {
        case .image:
            return .clear
        case .example:
            return backgroundColor
        }
    }

    /// The disabled title color that will be applied to the button for a specific style.
    public var disabledTitleColor: UIColor? {
        switch self {
        case .image:
            return .clear
        case .example:
            return titleColor.withAlphaComponent(0.5)
        }
    }

}

// MARK: - Fonts

extension ButtonStyle {

    /// The text style that will be applied to the button for a specific style.
    public var textStyle: UIFont.TextStyle {
        switch self {
        case .image:
            return .body
        case let .example(textStyle, _):
            return textStyle
        }
    }

    /// The symbolic traits that will be applied to the button for a specific style.
    public var symbolicTraits: UIFontDescriptor.SymbolicTraits? {
        switch self {
        case .image:
            return nil
        case let .example(_, symbolicTraits):
            return symbolicTraits
        }
    }

}

// MARK: - TintColor

extension ButtonStyle {

    /// The tint color that will be applied to the button for a specific style.
    public var tintColor: UIColor {
        switch self {
        case .image, .example:
            return Asset.example.color
        }
    }
}

// MARK: - Insets

extension ButtonStyle {

    /// The content insets that will be applied to the button for a specific style.
    public var contentInsets: UIEdgeInsets {
        switch self {
        case .image:
            return .zero
        case .example:
            return UIEdgeInsets(top: 10, left: 20, bottom: 10, right: 20)
        }
    }
}

// MARK: - Corner Radius

extension ButtonStyle {

    /// The corner radius that will be applied to the button for a specific style.
    public func cornerRadius(height: CGFloat) -> CGFloat {
        switch self {
        case .example:
            return height / 4
        case .image:
            return 0
        }
    }
}
