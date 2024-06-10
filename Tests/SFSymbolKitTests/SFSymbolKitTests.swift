//
//  SFSymbolKitTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

final class SFSymbolKitTests: XCTestCase {
        /// Tests the `decodePList` function to ensure it correctly decodes the plist into an array of symbols.
    func testDecodePList() {
            // Given
            /// The expected number of symbols that should be present in the plist
        let expectedFivePointOneSymbolsCount = 5648 /// SF Symbols 5.1
        let expectedFivePointOneSymbolsCountPlusSwift = 5649 /// SF Symbols 5.1 + "swift"
        let SwiftSymbolCount = 6558 /// SF Symbols 6 + "swift"+ "swiftdata"
            // When
            /// The actual array of symbols returned by the `decodePList` function.
        let symbols = decodePList()
        
            // Then
            /// Asserts that the symbols array is not empty.
        XCTAssertFalse(symbols.isEmpty, "The symbols array should not be empty.")
            /// Asserts that the symbols array contains the expected number of symbols.
        XCTAssertEqual(symbols.count, SwiftSymbolCount, "The symbols array should contain \(expectedFivePointOneSymbolsCount) symbols.")
    }

    func testCustomFontLoading() {
        // Ensure you use the correct PostScript name of the font
        let fontName = "SF-Pro"
        let size: CGFloat = 12
        
        // Convert SwiftUI Font to CTFont to test its existence
        let ctFont = CTFontCreateWithName(fontName as CFString, size, nil)
        XCTAssertNotNil(ctFont, "Custom font should be loaded.")
    }
    
    func testAllFonts() {
        let size: CGFloat = 12
        fontNames.forEach { fontName in
            // Convert SwiftUI Font to CTFont to test its existence
            let ctFont = CTFontCreateWithName(fontName as CFString, size, nil)
            XCTAssertNotNil(ctFont, "Custom font \(fontName) should be loaded.")
        }
    }
}
