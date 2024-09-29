//
//  ResizingMode.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `ResizingMode` is an enumeration that defines a list of SF Symbol Image Resizing Mode.
public enum ResizingMode: Int, CaseIterable {
    /// A mode to repeat the image at its original size, as many
    /// times as necessary to fill the available space.
    case tile
    /// A mode to enlarge or reduce the size of an image so that it
    /// fills the available space.
    case stretch

    /// Provides a human-readable name for each Image Resizing Mode.
    public var name: String {
        switch self {
        case .tile: return "Tile"
        case .stretch: return "Stretch"
        }
    }
    /// Provides the corresponding `ResizingMode` for each Image Resizing Mode.
    public var scale: Image.ResizingMode {
        switch self {
        case .tile: return .tile
        case .stretch: return .stretch
        }
    }
}
