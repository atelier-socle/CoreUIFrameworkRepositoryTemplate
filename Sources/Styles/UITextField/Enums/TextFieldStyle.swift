//
//  LabelStyle.swift
//  MyCoreUIFrameworkTests_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit

/// The different textfield style available.
public enum TextFieldStyle {
    /// Simple label with a specific color, text style and traits.
    case font(LabelLevelColor, UIFont.TextStyle, UIFontDescriptor.SymbolicTraits? = nil)

    static var allCases: [TextFieldStyle] {
        let allLevels = LabelLevelColor.allCases
        var allStyles = [TextFieldStyle]()
        allLevels.forEach {
            allStyles.append(contentsOf: [.font($0, .body, .traitBold)])
        }
        return allStyles
    }
}

// MARK: - Colors Normal

extension TextFieldStyle {

    /// The text color that will be applied to the text field for a specific style.
    public var textColor: UIColor {
        switch self {
        case let .font(levelColor, _, _):
            return levelColor.textColor
        }
    }

}

// MARK: - Fonts

extension TextFieldStyle {

    /// The text style that will be applied to the text field for a specific style.
    public var textStyle: UIFont.TextStyle {
        switch self {
        case let .font(_, textStyle, _):
            return textStyle
        }
    }

    /// The symbolic traits that will be applied to the text field for a specific style.
    public var symbolicTraits: UIFontDescriptor.SymbolicTraits? {
        switch self {
        case let .font(_, _, symbolicTraits):
            return symbolicTraits
        }
    }

}
