//
//  UIButtonExtension.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit
import SwiftyUtils

// swiftlint:disable all
private struct ButtonAssociatedKeys {
    static var link = "UIButtonStyle"
}
// swiftlint:enable all

extension UIButton {

    /// Apply all the `ButtonStyle` properties to the `UIButton`.
    public var style: ButtonStyle? {
        get {
            objc_getAssociatedObject(self, &ButtonAssociatedKeys.link) as? ButtonStyle
        }
        set {
            if let style = newValue {
                configure(style: style)
            }
            objc_setAssociatedObject(self,
                                     &ButtonAssociatedKeys.link,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    override open var isHighlighted: Bool {
        didSet {
            guard let style = style else {
                return
            }

            let image = UIImage(color: isHighlighted ? style.highlightBackgroundColor : style.backgroundColor)
            setBackgroundImage(image, for: state)
            imageView?.alpha = isHighlighted ? 0.5 : 1
        }
    }

    override open var isEnabled: Bool {
        didSet {
            guard let style = style else {
                return
            }

            let image = UIImage(color: isEnabled ? style.backgroundColor : style.disabledBackgroundColor)
            setBackgroundImage(image, for: .normal)
        }
    }

    private func configure(style: ButtonStyle) {
        applyCornerRadius(style.cornerRadius(height: frame.height))
        titleLabel?.configureDynamicStyle(style.textStyle, traits: style.symbolicTraits)
        contentEdgeInsets = style.contentInsets
        tintColor = style.tintColor

        setTitleColor(style.titleColor, for: .normal)
        setTitleColor(style.disabledTitleColor, for: .disabled)
        setTitleColor(style.highlightedTitleColor, for: .highlighted)
        setBackgroundImage(UIImage(color: style.backgroundColor), for: .normal)
    }

}
