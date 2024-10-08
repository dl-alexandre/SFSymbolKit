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

    @Test("Decode PList correctly as Structs")
    func testDecodePListAsStructs() async throws {
        let categoryCount = 6830
        let categorizer = Categorizer()
        let symbolizer = Symbolizer()
        let symbols  = convertSymbols(categorization: categorizer, symbolization: symbolizer)

        #expect(!symbols.isEmpty, "The symbols array should not be empty.")

        #expect(symbols.count == categoryCount, "The symbols array should contain \(categoryCount) categories.")
    }

    @Test("Count SymbolCategory PList")
    func testDecodeCategoryPList() async throws {
        let categoryCount = 32
        let categorizer = Categorizer()
        let categories = categorizer.categorize()

        #expect(!categories.isEmpty, "The categories array should not be empty.")

        #expect(categories.count == categoryCount, "The categories array should contain \(categoryCount) categories.")
    }

    @Test("Decode SymbolCategory PList")
    func testConvertCategories() async throws {
        let categorizer = MockCategorizer()

        let expectedDict: [String: SFSymbolKit.SymbolCategory] = [
            "all": SymbolCategory(icon: all.icon, key: all.key, label: all.label),
            "multicolor": SymbolCategory(icon: multicolor.icon, key: multicolor.key, label: multicolor.label),
            "variablecolor": SymbolCategory(icon: variablecolor.icon, key: variablecolor.key, label: variablecolor.label)
        ]
        let result = convertCategories(categorization: categorizer)

        #expect(
            result == expectedDict,
            "The convertCategories function did not produce the expected result."
        )
    }

    let all = CategoryTokens.all
    let multicolor = CategoryTokens.multicolor
    let variablecolor = CategoryTokens.variablecolor

    func decodeSymbolDict() -> [String: [String]] {
        return [
            "symbol1": ["all", "multicolor"],
            "symbol2": ["variablecolor"]
        ]
    }

    @Test("Decode Symbol PList")
    func testConvertSymbols() {
        let expectedSymbols = [
            Symbol(name: "symbol1", categories: [
                SymbolCategory(icon: "square.grid.2x2", key: "all", label: "All"),
                SymbolCategory(icon: "paintpalette", key: "multicolor", label: "Multicolor")
            ]),
            Symbol(
                name: "symbol2",
                categories: [
                    SymbolCategory(
                        icon: "slider.horizontal.below.square.and.square.filled",
                        key: "variablecolor",
                        label: "Variable Color"
                    )
                ]
            )
        ].sorted { $0.name < $1.name }

        // Initialize the mock categorizer and symbolizer
        let mockCategorizer = MockCategorizer()
        let symbolizer = MockSymbolizer()

        // Perform the test
        let result = symbolizer.symbolize(categorization: mockCategorizer).sorted { $0.name < $1.name }

        // Assert the results
        #expect(result == expectedSymbols, "The convertSymbols function did not produce the expected result.")
    }
}

class MockCategorizer: Categorizing {
    let all = CategoryTokens.all
    let multicolor = CategoryTokens.multicolor
    let variablecolor = CategoryTokens.variablecolor

    func categorize() -> [SFSymbolKit.SymbolCategory] {
        return [
            SymbolCategory(icon: all.icon, key: all.key, label: all.label),
            SymbolCategory(icon: multicolor.icon, key: multicolor.key, label: multicolor.label),
            SymbolCategory(icon: variablecolor.icon, key: variablecolor.key, label: variablecolor.label)
        ]
    }
}

// Mock the Symbolizer and its dependencies
class MockSymbolizer: Symbolizing {
    // Mock data for testing
    let mockSymbolDict: [String: [String]] = [
        "symbol1": ["all", "multicolor"],
        "symbol2": ["variablecolor"]
    ]

    func symbolize(categorization: Categorizing) -> [Symbol] {
        let symbolList = mockSymbolDict
        let categoryDict: [String: SFSymbolKit.SymbolCategory] = categorization.categorize().reduce(
            into: [String: SFSymbolKit.SymbolCategory]()
        ) { dict, category in
            dict[category.key] = category
        }
        var symbols: [Symbol] = []

        for (key, categoryNames) in symbolList {
            let categories: [SFSymbolKit.SymbolCategory] = categoryNames.compactMap { categoryName in
                categoryDict[categoryName]
            }
            let symbol = Symbol(name: key, categories: categories)
            symbols.append(symbol)
        }
        return symbols
    }
}
