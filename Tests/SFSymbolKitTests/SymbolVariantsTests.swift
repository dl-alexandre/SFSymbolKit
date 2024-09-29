//
//  SymbolVariantsTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class SymbolVariantsTests: XCTestCase {

    func testSymbolVariantsName() {
        XCTAssertEqual(SymbolVariants.circle.name, "Circle")
        XCTAssertEqual(SymbolVariants.square.name, "Square")
        XCTAssertEqual(SymbolVariants.rectangle.name, "Rectangle")
        XCTAssertEqual(SymbolVariants.fill.name, "Fill")
        XCTAssertEqual(SymbolVariants.slash.name, "Slash")
        XCTAssertEqual(SymbolVariants.none.name, "None")
    }

    func testSymbolVariantsVariant() {
        XCTAssertEqual(SymbolVariants.circle.variant, .circle)
        XCTAssertEqual(SymbolVariants.square.variant, .square)
        XCTAssertEqual(SymbolVariants.rectangle.variant, .rectangle)
        XCTAssertEqual(SymbolVariants.fill.variant, .fill)
        XCTAssertEqual(SymbolVariants.slash.variant, .slash)
        XCTAssertEqual(SymbolVariants.none.variant, .none)
    }
}
