//
//  ScaleTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class ScaleTests: XCTestCase {

    func testScaleNames() {
        let expectedNames = ["Small", "Medium", "Large"]

        for (index, scale) in Scale.allCases.enumerated() {
            XCTAssertEqual(
                scale.name,
                expectedNames[index],
                "Expected \(expectedNames[index]) but got \(scale.name)"
            )
        }
    }

    func testScaleValues() {
        let expectedScales: [Image.Scale] = [.small, .medium, .large]

        for (index, scale) in Scale.allCases.enumerated() {
            XCTAssertEqual(
                scale.scale,
                expectedScales[index],
                "Expected \(expectedScales[index]) but got \(scale.scale)"
            )
        }
    }
}
