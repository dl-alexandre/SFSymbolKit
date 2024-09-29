//
//  SymbolRenderingModesTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
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
