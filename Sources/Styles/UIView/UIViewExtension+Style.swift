//
//  UIViewExtension.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

// swiftlint:disable all
private struct ViewAssociatedKeys {
    static var style = "UIViewVStyle"
}
// swiftlint:enable all

// MARK: - Style

extension UIView {

    /// Apply all the `ViewStyle` properties to the `UIView`.
    public var vStyle: ViewStyle? {
        get {
            objc_getAssociatedObject(self, &ViewAssociatedKeys.style) as? ViewStyle
        }
        set {
            if let style = newValue {
                configure(style: style)
            }

            objc_setAssociatedObject(self,
                                     &ViewAssociatedKeys.style,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func configure(style: ViewStyle) {
        backgroundColor = style.backgroundColor
    }

}
