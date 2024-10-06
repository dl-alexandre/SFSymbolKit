//
//  SFSymbolKitTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI

final class SFSymbolKitTests {

    @Test("Decode PList correctly")
    func testDecodePList() async throws {
        // The expected number of symbols that should be present in the plist
        /// expected5oneSymbolsCount = 5648 // SF Symbols 5.1
        /// expected5oneSymbolsCountPlusSwift = 5649 // SF Symbols 5.1 + "swift"
        /// expected6SymbolCount = 6558 // SF Symbols 6 + "swift" + "swiftdata"
        /// SF Symbols 6 + "swift" + "swiftdata" + "appclip" + "appclip.fill" + "applescript"
        let swiftSymbolCount = 6830

        // The actual array of symbols returned by the `decodePList` function.
        let symbols = convertSymbolsAsArrayOfStrings()

        // Asserts that the symbols array is not empty.
        #expect(!symbols.isEmpty, "The symbols array should not be empty.")
        // Asserts that the symbols array contains the expected number of symbols.
        #expect(symbols.count == swiftSymbolCount, "The symbols array should contain \(swiftSymbolCount) symbols.")
    }

    @Test("Decode PList correctly as Structs")
    func testDecodePListAsStructs() async throws {
        let categoryCount = 6830

        let symbols  = convertSymbols()

        #expect(!symbols.isEmpty, "The symbols array should not be empty.")

        #expect(symbols.count == categoryCount, "The symbols array should contain \(categoryCount) categories.")
    }

    @Test("Decode Category PList")
    func testDecodeCategoryPList() async throws {
        let categoryCount = 32

        let categories = decodeCategoryList()
        
        #expect(!categories.isEmpty, "The categories array should not be empty.")
        
        #expect(categories.count == categoryCount, "The categories array should contain \(categoryCount) categories.")
    }
}
