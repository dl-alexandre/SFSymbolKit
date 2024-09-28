//
//  TextStyle.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `TextStyle` is an enumeration that defines a list of font weight styles.
public enum TextStyle: Int, CaseIterable {

    /// Define cases for each text style.
    case largeTitle, title, title2, title3, headline, subheadline, body, callout, footnote, caption, caption2

    /// A computed property that returns the name of the text style as a `String`.
    public var name: String {
        switch self {
        case .largeTitle: return "LargeTitle"
        case .title: return "Title"
        case .title2: return "Title2"
        case .title3: return "Title3"
        case .headline: return "Headline"
        case .subheadline: return "Subheadline"
        case .body: return "Body"
        case .callout: return "Callout"
        case .footnote: return "Footnote"
        case .caption: return "Caption"
        case .caption2: return "Caption2"
        }
    }
    /// A computed property that returns the corresponding `TextStyle` value for each text style.
    public var style: Font.TextStyle {
        switch self {
        case .largeTitle: return .largeTitle
        case .title: return .title
        case .title2: return .title2
        case .title3: return .title3
        case .headline: return .headline
        case .subheadline: return .subheadline
        case .body: return .body
        case .callout: return .callout
        case .footnote: return .footnote
        case .caption: return .caption
        case .caption2: return .caption2
        }
    }
}
