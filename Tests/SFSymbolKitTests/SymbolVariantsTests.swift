//
//  SymbolVariantsTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Symbol Variants Tests")
struct SymbolVariantsTests {
    @Test("Symbol Variant Name Test")
    func testSymbolVariantsName() async throws {
        #expect(SymbolVariants.circle.name == "Circle")
        #expect(SymbolVariants.square.name == "Square")
        #expect(SymbolVariants.rectangle.name == "Rectangle")
        #expect(SymbolVariants.fill.name == "Fill")
        #expect(SymbolVariants.slash.name == "Slash")
        #expect(SymbolVariants.none.name == "None")
    }
    @Test("Symbol Variant Variant Test")
    func testSymbolVariantsVariant() async throws {
        #expect(SymbolVariants.circle.variant == .circle)
        #expect(SymbolVariants.square.variant == .square)
        #expect(SymbolVariants.rectangle.variant == .rectangle)
        #expect(SymbolVariants.fill.variant == .fill)
        #expect(SymbolVariants.slash.variant == .slash)
        #expect(SymbolVariants.none.variant == .none)
    }
}
