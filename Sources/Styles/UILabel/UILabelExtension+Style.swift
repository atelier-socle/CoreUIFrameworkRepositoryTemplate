//
//  UILabelExtension.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import SwiftyUtils

// swiftlint:disable:next convenience_type
private struct LabelAssociatedKeys {
    static var style = "UILabelStyle"
}

extension UILabel {

    /// Apply all the `LabelStyle` properties to the `UILabel`.
    public var style: LabelStyle? {
        get {
            objc_getAssociatedObject(self, &LabelAssociatedKeys.style) as? LabelStyle
        }
        set {
            if let style = newValue {
                configure(style: style)
            }
            objc_setAssociatedObject(self,
                                     &LabelAssociatedKeys.style,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func configure(style: LabelStyle) {
        configureDynamicStyle(style.textStyle, traits: style.symbolicTraits)
        backgroundColor = .clear
        textColor = style.textColor
    }

}
