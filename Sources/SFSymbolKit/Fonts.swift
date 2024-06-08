//
//  File.swift
//  
//
//  Created by Dalton Alexandre on 6/6/24.
//

import SwiftUI


let fontWithoutItalics = [
    "SFCompactRounded",
    "SFCompactDisplay"
]

// `SF` is an enumeration that defines a list of font weight styles.
public enum SF: Int, CaseIterable {
    
    case compact, pro
    
    /// A computed property that returns the name of the font weight as a `String`.
    public var name: String {
        switch self {
            case .compact: return "Compact"
            case .pro: return "Pro"
        }
    }
}

/// `SFCompact` is an enumeration that defines a list of font styles.
public enum Style: Int, CaseIterable {
    
    /// Define cases for each font weight style.
    case text, rounded, display, blank
    
    /// A computed property that returns the name of the font weight as a `String`.
    public var name: String {
        switch self {
            case .text: return "Text"
            case .rounded: return "Rounded"
            case .display: return "Display"
            case .blank: return ""
        }
    }
}


