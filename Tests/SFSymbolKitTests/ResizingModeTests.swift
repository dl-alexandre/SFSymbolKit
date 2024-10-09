//
//  ResizingModeTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Resizing Mode Tests")
struct ResizingModeTests {
    @Test("Resizing Mode Name Test")
    func testResizingModeNames() async throws {
        let expectedNames = ["Tile", "Stretch"]

        for (index, mode) in ResizingMode.allCases.enumerated() {
            #expect(
                mode.name == expectedNames[index],
                "Expected \(expectedNames[index]) but got \(mode.name)"
            )
        }
    }
    @Test("Resizing Mode Value Test")
    func testResizingModeValues() async throws {
        let expectedScales: [Image.ResizingMode] = [.tile, .stretch]

        for (index, mode) in ResizingMode.allCases.enumerated() {
            #expect(
                mode.scale == expectedScales[index],
                "Expected \(expectedScales[index]) but got \(mode.scale)"
            )
        }
    }
}
