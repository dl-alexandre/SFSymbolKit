//
//  OrientationTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI

@Suite("Orientation Tests")
struct OrientationTests {
    @Test("Test Orientation Names")
    func testOrientationNames() async throws {
        let expectedNames = [
            "Up", "Down", "Left", "Right",
            "Small Mirrored", "Medium Mirrored",
            "Large Mirrored", "Right Mirrored"
        ]

        for (index, orientation) in Orientation.allCases.enumerated() {
            #expect(
                orientation.name == expectedNames[index],
                "Expected \(expectedNames[index]) but got \(orientation.name)"
            )
        }
    }
    @Test("Test Orientation Values")
    func testOrientationValues() {
        let expectedScales: [Image.Orientation] = [
            .up, .down, .left, .right,
                .upMirrored, .downMirrored,
                .leftMirrored, .rightMirrored
        ]

        for (index, orientation) in Orientation.allCases.enumerated() {
            #expect(
                orientation.scale == expectedScales[index],
                "Expected \(expectedScales[index]) but got \(orientation.scale)"
            )
        }
    }
}
