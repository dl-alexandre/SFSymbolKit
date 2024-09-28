//
//  Scale.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `Scale` is an enumeration that defines a list of SF Symbol Image Scales.
public enum Scale: Int, CaseIterable {

    /// Define cases for each Image Scale.
    case small, medium, large

    /// Provides a human-readable name for each Image Scale.
    public var name: String {
        switch self {
        case .small: return "Small"
        case .medium: return "Medium"
        case .large: return "Large"
        }
    }
    /// Provides the corresponding `Scale` for each Image Scale.
    public var scale: Image.Scale {
        switch self {
        case .small: return .small
        case .medium: return .medium
        case .large: return .large
        }
    }
}
