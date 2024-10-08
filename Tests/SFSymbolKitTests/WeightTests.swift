//
//  WeightTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
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

    @MainActor func testPickerContent() {
        let sampleMode = Binding.constant(Weight.regular)
        let view = Weight.picker(weight: sampleMode)

#if os(iOS)
        let controller = UIHostingController(rootView: view)
#else
        let controller = NSHostingController(rootView: view)
#endif

        let expectation = self.expectation(description: "Load view")

        DispatchQueue.main.async {
            let renderedView = controller.view
            XCTAssertNotNil(renderedView, "The view should be rendered")
            expectation.fulfill()
        }

        wait(for: [expectation], timeout: 1.0)

        // Add further assertions if needed, e.g., verifying the content of the picker.
    }
}
