//
//  ResizingModeTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class ResizingModeTests: XCTestCase {

    func testResizingModeNames() {
        let expectedNames = ["Tile", "Stretch"]

        for (index, mode) in ResizingMode.allCases.enumerated() {
            XCTAssertEqual(
                mode.name,
                expectedNames[index],
                "Expected \(expectedNames[index]) but got \(mode.name)"
            )
        }
    }

    func testResizingModeValues() {
        let expectedScales: [Image.ResizingMode] = [.tile, .stretch]

        for (index, mode) in ResizingMode.allCases.enumerated() {
            XCTAssertEqual(
                mode.scale,
                expectedScales[index],
                "Expected \(expectedScales[index]) but got \(mode.scale)"
            )
        }
    }
}
