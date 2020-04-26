//
//  UIActivityIndicatorView+Style.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

// swiftlint:disable all
private struct ActivityIndicatorViewAssociatedKeys {
    static var style = "UIActivityIndicatorViewStyle"
}
// swiftlint:enable all

extension UIActivityIndicatorView {

    /// Apply all the `ActivityIndicatorStyle` properties to the `UIActivityView`.
    public var aStyle: ActivityIndicatorStyle? {
        get {
            objc_getAssociatedObject(self, &ActivityIndicatorViewAssociatedKeys.style) as? ActivityIndicatorStyle
        }
        set {
            if let style = newValue {
                configure(activityIndicatorStyle: style)
            }
            objc_setAssociatedObject(self,
                                     &ActivityIndicatorViewAssociatedKeys.style,
                                     newValue,
                                     objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN_NONATOMIC)
        }
    }

    private func configure(activityIndicatorStyle: ActivityIndicatorStyle) {
        style = activityIndicatorStyle.style
        hidesWhenStopped = activityIndicatorStyle.hidesWhenStopped
    }

}
