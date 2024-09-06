//
//  FontWeights.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `FontWeights` is an enumeration that defines a list of font weight styles.
public enum FontWeights: Int, CaseIterable {

    /// Define cases for each font weight style.
    case black, heavy, bold, semibold, medium, regular, light, thin, ultraLight

    /// A computed property that returns the name of the font weight as a `String`.
    public var name: String {
        switch self {
        case .black: return "Black"
        case .heavy: return "Heavy"
        case .bold: return "Bold"
        case .semibold: return "Semibold"
        case .medium: return "Medium"
        case .regular: return "Regular"
        case .light: return "Light"
        case .thin: return "Thin"
        case .ultraLight: return "UltraLight"
        }
    }
    /// A computed property that returns the corresponding `Font.Weight` value for each font weight style.
    public var weight: Font.Weight {
        switch self {
        case .black: return .black
        case .heavy: return .heavy
        case .bold: return .bold
        case .semibold: return .semibold
        case .medium: return .medium
        case .regular: return .regular
        case .light: return .light
        case .thin: return .thin
        case .ultraLight: return .ultraLight
        }
    }
}
