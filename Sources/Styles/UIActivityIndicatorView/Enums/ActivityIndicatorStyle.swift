//
//  ActivityIndicatorStyle.swift
//  MyCoreUIFramework
//
//  Created by Tom Baranes on 26/04/2020.
//  Copyright © 2020 MyCoreUIFramework. All rights reserved.
//

import UIKit

/// The different activity indicator style available.
public enum ActivityIndicatorStyle: CaseIterable {
    /// If iOS13 then it will use `.large` activity indicator, otherwise fallback on `.whiteLarge`
    case large
    /// If iOS13 then it will use `.medium` activity indicator, otherwise fallback on `.white`
    case medium
    /// The standard gray style of indicator.
    case gray
}

// MARK: - Style

extension ActivityIndicatorStyle {

    /// The `UIActivityIndicatorView.Style` that will be applied to the `UIActivityIndicatorView`.
    public var style: UIActivityIndicatorView.Style {
        switch self {
        case .gray:
            return .gray
        case .large:
            if #available(iOS 13.0, tvOS 13.0, *) {
                return .large
            }
            return .whiteLarge
        case .medium:
            if #available(iOS 13.0, tvOS 13.0, *) {
                return .medium
            }
            return .white
        }
    }

}

// MARK: - Hides when stopped

extension ActivityIndicatorStyle {

    /// Determine if `hidesWhenStopped` is set to true or false for a specific style.
    public var hidesWhenStopped: Bool {
        true
    }

}
