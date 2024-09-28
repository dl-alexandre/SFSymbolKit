//
//  SymbolVariants.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//
import SwiftUI

/// `SymbolVariants` is an enumeration that defines a list of symbol shapes and their variants.
public enum SymbolVariants: Int, CaseIterable {
    /// A variant that encapsulates the symbol in a circle.
    case circle
    /// A variant that encapsulates the symbol in a square.
    case square
    /// A variant that encapsulates the symbol in a rectangle.
    case rectangle
    /// A filled version of the variant.
    case fill
    /// A variant that draws a slash through the symbol.
    case slash
    /// No variant for a symbol.
    case none

    /// A computed property that returns the name of the symbol variant as a `String`.
    var name: String {
        switch self {
        case .circle:
            return "Circle"
        case .square:
            return "Square"
        case .rectangle:
            return "Rectangle"
        case .fill:
            return "Fill"
        case .slash:
            return "Slash"
        case .none:
            return "None"
        }
    }

    /// A computed property that returns the same variant case.
    /// This could be used to return a specific variant type from a function or method.
    var variant: SymbolVariants {
        switch self {
        case .circle:
            return .circle
        case .square:
            return .square
        case .rectangle:
            return .rectangle
        case .fill:
            return .fill
        case .slash:
            return .slash
        case .none:
            return .none
        }
    }
}
