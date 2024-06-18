//
//  SymbolEffects.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//


/// `SymbolEffects` is an enumeration that defines a list of symbol effects.
public enum SymbolEffects: Int, CaseIterable {
    /// Creates a gentle bouncing animation for the symbol.
    /// Useful for adding playful or attention-grabbing behavior.
    case bounce
    /// Adds a subtle side-to-side movement to the symbol.
    /// Great for simulating a natural, organic motion.
    case wiggle
    /// Rotates the symbol around its center.
    /// Ideal for emphasizing rotation or circular motion.
    case rotate
    /// Simulates a breathing effect by subtly scaling the symbol up and down.
    /// Creates a calming or lifelike animation.
    case breath
    /// Alternates between slightly larger and slightly smaller sizes.
    /// Useful for drawing attention or indicating activity.
    case pulse
    
    /// A computed property that returns the name of the symbol effect as a `String`.
    var name: String {
        switch self {
        case .bounce:
            return "Bounce"
        case .wiggle:
            return "Wiggle"
        case .rotate:
            return "Rotate"
        case .breath:
            return "Breath"
        case .pulse:
            return "Pulse"
        }
    }
    
    /// A computed property that returns the same effect case.
    /// This could be used to return a specific variant type from a function or method.
    var variant: SymbolEffects {
        switch self {
        case .bounce:
            return .bounce
        case .wiggle:
            return .wiggle
        case .rotate:
            return .rotate
        case .breath:
            return .breath
        case .pulse:
            return .pulse
        }
    }
    
    /// Returns a random symbol effect.
    public func random() -> SymbolEffects {
        return SymbolEffects.allCases.randomElement() ?? .bounce
    }
}
