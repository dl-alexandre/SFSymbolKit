//
//  ResizingMode.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `ResizingMode` is an enumeration that defines a list of SF Symbol Image Resizing Mode.
public enum ResizingMode: Int, CaseIterable {
    case tile, stretch

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
