//
//  TemplateRenderingMode.swift
//  SFSymbolKit
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `TemplateRenderingMode` is an enumeration that defines a list of
/// SF Symbol Image Renderings by SwiftUI.
public enum TemplateRenderingMode: Int, CaseIterable {
    /// A mode that renders all non-transparent pixels as the foreground
    /// color.
    case template

    /// A mode that renders pixels of bitmap images as-is.
    ///
    /// For system images created from the SF Symbol set, multicolor symbols
    /// respect the current foreground and accent colors.
    case original

    /// Provides a human-readable name for each Image Scale.
    public var name: String {
        switch self {
        case .template: return "Template"
        case .original: return "Original"
        }
    }
    /// Provides the corresponding `Scale` for each Image Scale.
    public var scale: Image.TemplateRenderingMode {
        switch self {
        case .template: return .template
        case .original: return .original
        }
    }
}

/// You also use `renderingMode` to produce multicolored system graphics
/// from the SF Symbols set. Use the ``TemplateRenderingMode/original``
/// mode to apply a foreground color to all parts of the symbol except
/// those that have a distinct color in the graphic.
