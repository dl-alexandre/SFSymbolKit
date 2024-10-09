//
//  TextStyleTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Text Style Tests")
struct TextStyleTests {
    @Test("Text Style Name Test")
    func testTextStyleNames() async throws {
        let expectedNames = [
            "LargeTitle", "Title", "Title2", "Title3", "Headline",
            "Subheadline", "Body", "Callout", "Footnote", "Caption", "Caption2"
        ]

        for (index, textStyle) in TextStyle.allCases.enumerated() {
            #expect(
                textStyle.name == expectedNames[index],
                "TextStyle name mismatch for \(textStyle)"
            )
        }
    }
    @Test("Text Style Mapping Test")
    func testTextStyleMapping() async throws {
        let expectedStyles: [Font.TextStyle] = [
            .largeTitle, .title, .title2, .title3, .headline,
            .subheadline, .body, .callout, .footnote, .caption, .caption2
        ]

        for (index, textStyle) in TextStyle.allCases.enumerated() {
            #expect(
                textStyle.style == expectedStyles[index],
                "TextStyle mapping mismatch for \(textStyle)"
            )
        }
    }
}
