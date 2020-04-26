//
//  UITextViewExtension+Style.swift
//  MyCoreUIFramework_iOS
//
//  Created by Tom Baranes on 26/04/2020.
//

import UIKit
import SwiftyUtils

// swiftlint:disable:next convenience_type
private struct TextViewAssociatedKeys {
    static var style = "UITextViewStyle"
}

extension UITextView {

    /// Apply all the `TextViewStyle` properties to the `UITextView`.
    public var style: TextViewStyle? {
        get {
            objc_getAssociatedObject(self, &TextViewAssociatedKeys.style) as? TextViewStyle
        }
        set {
            if let style = newValue {
                configure(style: style)
            }
            objc_setAssociatedObject(self,
                                     &TextViewAssociatedKeys.style,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func configure(style: TextViewStyle) {
        configureDynamicStyle(style.textStyle, traits: style.symbolicTraits)
        textColor = style.textColor
    }

}
