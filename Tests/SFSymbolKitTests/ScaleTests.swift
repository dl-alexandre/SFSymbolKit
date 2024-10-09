//
//  ScaleTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Scale Tests")
struct ScaleTests {
    @Test("Scale Name Test")
    func testScaleNames() async throws {
        let expectedNames = ["Small", "Medium", "Large"]

        for (index, scale) in Scale.allCases.enumerated() {
            #expect(
                scale.name == expectedNames[index],
                "Expected \(expectedNames[index]) but got \(scale.name)"
            )
        }
    }
    @Test("Scale Value Test")
    func testScaleValues() async throws {
        let expectedScales: [Image.Scale] = [.small, .medium, .large]

        for (index, scale) in Scale.allCases.enumerated() {
            #expect(
                scale.scale == expectedScales[index],
                "Expected \(expectedScales[index]) but got \(scale.scale)"
            )
        }
    }
}
