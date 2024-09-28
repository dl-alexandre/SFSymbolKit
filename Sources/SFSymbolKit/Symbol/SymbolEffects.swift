//
//  SymbolEffects.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `SymbolEffects` is an enumeration that defines a list of symbol effects.
@available(iOS 17.0, *)
public enum SymbolEffects: Int, CaseIterable {
    /// A symbol effect that applies the Appear animation to symbol
    /// images.
    /// The Appear animation makes the symbol visible either as a
    /// whole, or one motion group at a time.
    case appear
    /// The default symbol effect, resolves to a particular effect in a
    /// context-sensitive manner.
    case automatic
    /// Creates a gentle bouncing animation for the symbol.
    /// Useful for adding playful or attention-grabbing behavior.
    case bounce
    /// Simulates a breathing effect by subtly scaling the symbol up and down.
    /// Creates a calming or lifelike animation.
    case breathe
    /// A symbol effect that applies the Disappear animation to symbol
    /// images.
    /// The Disappear animation makes the symbol hidden either as a
    /// whole, or one motion group at a time.
    case disappear
    /// Alternates between slightly larger and slightly smaller sizes.
    /// Useful for drawing attention or indicating activity.
    case pulse
    /// A symbol effect that animates the replacement of one symbol
    /// image with another.
    case replace
    /// Rotates the symbol around its center.
    /// Ideal for emphasizing rotation or circular motion.
    case rotate
    /// A symbol effect that scales symbol images.
    case scale
    /// A symbol effect that applies the Variable Color animation to
    /// symbol images.
    /// The Variable Color animation replaces the opacity of variable
    /// layers in the symbol by a possibly repeating pattern that moves
    /// up and possibly back down the variable layers. It has no effect
    /// for non-variable color symbol images.
    case variableColor
    /// Adds a subtle side-to-side movement to the symbol.
    /// Great for simulating a natural, organic motion.
    case wiggle

    /// A computed property that returns the name of the symbol effect as a `String`.
    var name: String {
        switch self {
        case .appear:
            return "Appear"
        case .automatic:
            return "Automatic"
        case .breathe:
            return "Breathe"
        case .bounce:
            return "Bounce"
        case .disappear:
            return "Disappear"
        case .pulse:
            return "Pulse"
        case .replace:
            return "Replace"
        case .rotate:
            return "Rotate"
        case .scale:
            return "Scale"
        case .variableColor:
            return "Variable Color"
        case .wiggle:
            return "Wiggle"
        }
    }

    /// A computed property that returns the same effect case.
    /// This could be used to return a specific variant type from a function or method.
    @available(iOS 18.0, macOS 15.0, *)
    var effect: any SymbolEffect {
        switch self {
        case .appear:
            return .appear
        case .automatic:
            return .automatic
        case .breathe:
            return .breathe
        case .bounce:
            return .bounce
        case .disappear:
            return .disappear
        case .pulse:
            return .pulse
        case .replace:
            return .replace
        case .rotate:
            return .rotate
        case .scale:
            return .scale
        case .variableColor:
            return .variableColor
        case .wiggle:
            return .wiggle
        }
    }
}

/// Returns a random symbol effect.
public func randomSymbolEffect() -> (any SymbolEffect)? {
    guard let randomEffect = SymbolEffects.allCases.randomElement() as? (any SymbolEffect) else {
        return nil
    }
    return randomEffect
}
