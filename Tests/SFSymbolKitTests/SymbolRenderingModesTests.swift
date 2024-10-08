//
//  SymbolRenderingModesTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class SymbolRenderingModesTests: XCTestCase {

    func testMonochromeName() {
        XCTAssertEqual(SymbolRenderingModes.monochrome.name, "Monochrome")
    }

    func testMulticolorName() {
        XCTAssertEqual(SymbolRenderingModes.multicolor.name, "Multicolor")
    }

    func testHierarchicalName() {
        XCTAssertEqual(SymbolRenderingModes.hierarchical.name, "Hierarchical")
    }

    func testPaletteName() {
        XCTAssertEqual(SymbolRenderingModes.palette.name, "Palette")
    }

    @MainActor func testPickerContent() {
        let sampleMode = Binding.constant(SymbolRenderingModes.monochrome)
        let view = SymbolRenderingModes.picker(mode: sampleMode)

#if os(iOS)
        let controller = UIHostingController(rootView: view)
#else
        let controller = NSHostingController(rootView: view)
#endif

        let expectation = self.expectation(description: "Load view")

        DispatchQueue.main.async {
            let renderedView = controller.view
            XCTAssertNotNil(renderedView, "The view should be rendered")
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)

        // Add further assertions if needed, e.g., verifying the content of the picker.
    }
//    func testMonochromeMode() {
//        XCTAssertEqual(SymbolRenderingModes.monochrome.mode, SymbolRenderingMode.monochrome)
//    }
//
//    func testMulticolorMode() {
//        XCTAssertEqual(SymbolRenderingModes.multicolor.mode, SymbolRenderingMode.multicolor)
//    }
//
//    func testHierarchicalMode() {
//    XCTAssertEqual(
//        SymbolRenderingModes.hierarchical.mode,
//        SymbolRenderingMode.hierarchical
//    )
//    }
//
//    func testPaletteMode() {
//        XCTAssertEqual(SymbolRenderingModes.palette.mode, SymbolRenderingMode.palette)
//    }
}

// extension SymbolRenderingMode: Equatable {
//    public static func == (lhs: SymbolRenderingMode, rhs: SymbolRenderingMode) -> Bool {
//        return (lhs, rhs) == (.monochrome, .monochrome) ||
//        (lhs, rhs) == (.multicolor, .multicolor) ||
//        (lhs, rhs) == (.hierarchical, .hierarchical) ||
//        (lhs, rhs) == (.palette, .palette)
//    }
// }
//
//
// extension SymbolRenderingMode: Equatable {
//    public static func == (lhs: SymbolRenderingMode, rhs: SymbolRenderingMode) -> Bool {
//        switch (lhs, rhs) {
//        case (.monochrome, .monochrome),
//            (.multicolor, .multicolor),
//            (.hierarchical, .hierarchical),
//            (.palette, .palette):
//            return true
//        default:
//            return false
//        }
//    }
// }
