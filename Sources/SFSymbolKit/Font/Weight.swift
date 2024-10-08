//
//  Weight.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `Weight` is an enumeration that defines a list of Font Weight styles.
public enum Weight: Int, CaseIterable {

    /// Define cases for each Font Weight.
    case black, heavy, bold, semibold, medium, regular, light, thin, ultraLight

    /// A computed property that returns the name of the Font Weight as a `String`.
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
    /// A computed property that returns the corresponding `Weight` value for each Font Weight.
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

    /// Creates a SwiftUI Picker for selecting a Weight value.
    /// - Parameter weight: A Binding to the currently selected Weight value.
    @ViewBuilder static public func picker(
        weight: Binding<Weight>
    ) -> some View {
        VStack {
            Picker("", selection: weight) {
                ForEach(Weight.allCases, id: \.self) { weight in
                    Text(weight.name)
                        .font(.title)
                        .fontWeight(weight.weight)
                        .tag(weight)
                }
            }
        }
    }
}
