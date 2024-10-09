//
//  SymbolRenderingModesTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Symbol Rendering Mode Tests")
struct SymbolRenderingModesTests {
    @Test("Monochrome Name Test")
    func testMonochromeName() async throws {
        #expect(SymbolRenderingModes.monochrome.name == "Monochrome")
    }
    @Test("Multicolor Name Test")
    func testMulticolorName() async throws {
        #expect(SymbolRenderingModes.multicolor.name == "Multicolor")
    }
    @Test("Hierarchical Name Test")
    func testHierarchicalName() async throws {
        #expect(SymbolRenderingModes.hierarchical.name == "Hierarchical")
    }
    @Test("Palette Name Test")
    func testPaletteName() async throws {
        #expect(SymbolRenderingModes.palette.name == "Palette")
    }
    @Test("Picker Test")
    @MainActor func testPickerContent() async throws {
        let sampleMode = Binding.constant(SymbolRenderingModes.monochrome)
        let view = SymbolRenderingModes.picker(mode: sampleMode)

#if os(iOS)
        let controller = UIHostingController(rootView: view)
#else
        let controller = NSHostingController(rootView: view)
#endif
        DispatchQueue.main.async {
            let renderedView = controller.view
            #expect(renderedView != nil, "The view should be rendered")
        }
    }
}
