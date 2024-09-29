//
//  ResizingModeTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
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
