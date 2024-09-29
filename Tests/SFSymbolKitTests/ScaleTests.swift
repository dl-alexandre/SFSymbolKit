//
//  ScaleTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
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
