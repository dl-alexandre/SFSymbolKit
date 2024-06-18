//
//  SF.swift
//  
//
//  Created by Dalton on 6/17/24.
//

import SwiftUI

// `SF` is an enumeration that defines a list of SF varients.
public enum SF: Int, CaseIterable {
    
    case compact, pro
    
    /// A computed property that returns the varient of SF as a `String`.
    public var name: String {
        switch self {
            case .compact: return "Compact"
            case .pro: return "Pro"
        }
    }
}

/// `Style` is an enumeration that defines a list of font styles.
public enum Style: Int, CaseIterable {
    
    /// Define cases for each font style.
    case text, rounded, display, blank
    
    /// A computed property that returns the name of the font style as a `String`.
    public var name: String {
        switch self {
            case .text: return "Text"
            case .rounded: return "Rounded"
            case .display: return "Display"
            case .blank: return ""
        }
    }
}


