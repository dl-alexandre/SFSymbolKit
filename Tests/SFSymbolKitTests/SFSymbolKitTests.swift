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
        let categorizor = Categorizor()
        let symbolizor = Symbolizor()
        let symbols  = convertSymbols(categorization: categorizor, symbolization: symbolizor)

        #expect(!symbols.isEmpty, "The symbols array should not be empty.")

        #expect(symbols.count == categoryCount, "The symbols array should contain \(categoryCount) categories.")
    }

    @Test("Count Category PList")
    func testDecodeCategoryPList() async throws {
        let categoryCount = 32
        let categorizor = Categorizor()
        let categories = categorizor.categorize()

        #expect(!categories.isEmpty, "The categories array should not be empty.")

        #expect(categories.count == categoryCount, "The categories array should contain \(categoryCount) categories.")
    }

    @Test("Decode Category PList")
    func testConvertCategories() async throws {
        let categorizor = MockCategorizor()

        let expectedDict: [String: SFSymbolKit.Category] = [
            "all": Category(icon: all.icon, key: all.key, label: all.label),
            "multicolor": Category(icon: multicolor.icon, key: multicolor.key, label: multicolor.label),
            "variablecolor": Category(icon: variablecolor.icon, key: variablecolor.key, label: variablecolor.label)
        ]
        let result = convertCategories(categorization: categorizor)

        #expect(
            result == expectedDict,
            "The convertCategories function did not produce the expected result."
        )
    }

    let all = SymbolCategory.all
    let multicolor = SymbolCategory.multicolor
    let variablecolor = SymbolCategory.variablecolor

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
                Category(icon: "square.grid.2x2", key: "all", label: "All"),
                Category(icon: "paintpalette", key: "multicolor", label: "Multicolor")
            ]),
            Symbol(
                name: "symbol2",
                categories: [
                    Category(
                        icon: "slider.horizontal.below.square.and.square.filled",
                        key: "variablecolor",
                        label: "Variable Color"
                    )
                ]
            )
        ].sorted { $0.name < $1.name }

        // Initialize the mock categorizor and symbolizor
        let mockCategorizor = MockCategorizor()
        let symbolizor = MockSymbolizor()

        // Perform the test
        let result = symbolizor.symbolize(categorization: mockCategorizor).sorted { $0.name < $1.name }

        // Assert the results
        #expect(result == expectedSymbols, "The convertSymbols function did not produce the expected result.")
    }
}

class MockCategorizor: Categorizing {
    let all = SymbolCategory.all
    let multicolor = SymbolCategory.multicolor
    let variablecolor = SymbolCategory.variablecolor

    func categorize() -> [SFSymbolKit.Category] {
        return [
            Category(icon: all.icon, key: all.key, label: all.label),
            Category(icon: multicolor.icon, key: multicolor.key, label: multicolor.label),
            Category(icon: variablecolor.icon, key: variablecolor.key, label: variablecolor.label)
        ]
    }
}

// Mock the Symbolizor and its dependencies
class MockSymbolizor: Symbolizing {
    // Mock data for testing
    let mockSymbolDict: [String: [String]] = [
        "symbol1": ["all", "multicolor"],
        "symbol2": ["variablecolor"]
    ]

    func symbolize(categorization: Categorizing) -> [Symbol] {
        let symbolList = mockSymbolDict
        let categoryDict: [String: SFSymbolKit.Category] = categorization.categorize().reduce(
            into: [String: SFSymbolKit.Category]()
        ) { dict, category in
            dict[category.key] = category
        }
        var symbols: [Symbol] = []

        for (key, categoryNames) in symbolList {
            let categories: [SFSymbolKit.Category] = categoryNames.compactMap { categoryName in
                categoryDict[categoryName]
            }
            let symbol = Symbol(name: key, categories: categories)
            symbols.append(symbol)
        }
        return symbols
    }
}
