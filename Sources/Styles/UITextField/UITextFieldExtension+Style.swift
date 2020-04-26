//
//  UITextFieldExtension+Style.swift
//  MyCoreUIFramework_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit
import SwiftyUtils

// swiftlint:disable:next convenience_type
private struct TextFieldAssociatedKeys {
    static var style = "UITextFieldStyle"
}

extension UITextField {

    /// Apply all the `TextFieldStyle` properties to the `UITextFieldStyle`.
    public var style: TextFieldStyle? {
        get {
            objc_getAssociatedObject(self, &TextFieldAssociatedKeys.style) as? TextFieldStyle
        }
        set {
            if let style = newValue {
                configure(style: style)
            }
            objc_setAssociatedObject(self,
                                     &TextFieldAssociatedKeys.style,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func configure(style: TextFieldStyle) {
        configureDynamicStyle(style.textStyle, traits: style.symbolicTraits)
        textColor = style.textColor
    }

}
