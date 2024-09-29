//
//  TextStyleTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class TextStyleTests: XCTestCase {

    func testTextStyleNames() {
        let expectedNames = [
            "LargeTitle", "Title", "Title2", "Title3", "Headline",
            "Subheadline", "Body", "Callout", "Footnote", "Caption", "Caption2"
        ]

        for (index, textStyle) in TextStyle.allCases.enumerated() {
            XCTAssertEqual(
                textStyle.name,
                expectedNames[index],
                "TextStyle name mismatch for \(textStyle)"
            )
        }
    }

    func testTextStyleMapping() {
        let expectedStyles: [Font.TextStyle] = [
            .largeTitle, .title, .title2, .title3, .headline,
            .subheadline, .body, .callout, .footnote, .caption, .caption2
        ]

        for (index, textStyle) in TextStyle.allCases.enumerated() {
            XCTAssertEqual(
                textStyle.style,
                expectedStyles[index],
                "TextStyle mapping mismatch for \(textStyle)"
            )
        }
    }
}
