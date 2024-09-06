//
//  ImageScales.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `ImageScales` is an enumeration that defines a list of SF Symbol Image Scales.
public enum ImageScales: Int, CaseIterable {
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
