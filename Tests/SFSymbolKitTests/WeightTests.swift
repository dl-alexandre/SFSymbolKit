//
//  WeightTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Weight Tests")
struct WeightTests {
    @Test("Weight Name Test")
    func testWeightNames() async throws {
        let expectedNames = [
            "Black", "Heavy", "Bold", "Semibold", "Medium",
            "Regular", "Light", "Thin", "UltraLight"
        ]

        for (index, weight) in Weight.allCases.enumerated() {
            #expect(weight.name == expectedNames[index], "Expected \(expectedNames[index]) but got \(weight.name)")
        }
    }
    @Test("Weight Value Test")
    func testWeightValues() async throws {
        let expectedWeights: [Font.Weight] = [
            .black, .heavy, .bold, .semibold, .medium,
                .regular, .light, .thin, .ultraLight
        ]

        for (index, weight) in Weight.allCases.enumerated() {
            #expect(
                weight.weight == expectedWeights[index],
                "Expected \(expectedWeights[index]) but got \(weight.weight)"
            )
        }
    }
    @Test("Picker Test")
    @MainActor func testPickerContent() async throws {
        let sampleMode = Binding.constant(Weight.regular)
        let view = Weight.picker(weight: sampleMode)

#if os(iOS)
        let controller = UIHostingController(rootView: view)
#else
        let controller = NSHostingController(rootView: view)
#endif

//        let expectation = try #require("Load view")

        DispatchQueue.main.async {
            let renderedView = controller.view
            #expect(renderedView != nil, "The view should be rendered")
//            expectation.fulfill()
        }

//        wait(for: [expectation], timeout: 1.0)

        // Add further assertions if needed, e.g., verifying the content of the picker.
    }
}
