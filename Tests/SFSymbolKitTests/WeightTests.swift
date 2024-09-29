//
//  WeightTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class WeightTests: XCTestCase {

    func testWeightNames() {
        let expectedNames = [
            "Black", "Heavy", "Bold", "Semibold", "Medium",
            "Regular", "Light", "Thin", "UltraLight"
        ]

        for (index, weight) in Weight.allCases.enumerated() {
            XCTAssertEqual(weight.name, expectedNames[index], "Expected \(expectedNames[index]) but got \(weight.name)")
        }
    }

    func testWeightValues() {
        let expectedWeights: [Font.Weight] = [
            .black, .heavy, .bold, .semibold, .medium,
                .regular, .light, .thin, .ultraLight
        ]

        for (index, weight) in Weight.allCases.enumerated() {
            XCTAssertEqual(
                weight.weight,
                expectedWeights[index],
                "Expected \(expectedWeights[index]) but got \(weight.weight)"
            )
        }
    }
}
