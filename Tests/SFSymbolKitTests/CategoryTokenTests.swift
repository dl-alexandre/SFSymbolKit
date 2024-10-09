//
//  CategoryTokenTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
import SwiftUI
@testable import SFSymbolKit
@Suite("Category Token Tests")
struct CategoryTokenTests {
    @Test("Category Token Labels")
    func testCategoryTokenLabels() async throws {
        let expectedLabels: [CategoryTokens: String] = [
            .all: "All",
            .whatsnew: "What's New",
            .multicolor: "Multicolor",
            .variablecolor: "Variable Color",
            .communication: "Communication",
            .weather: "Weather",
            .maps: "Maps",
            .objectsandtools: "Objects & Tools",
            .devices: "Devices",
            .cameraandphotos: "Camera & Photos",
            .gaming: "Gaming",
            .connectivity: "Connectivity",
            .transportation: "Transportation",
            .automotive: "Automotive",
            .accessibility: "Accessibility",
            .privacyandsecurity: "Privacy & Security",
            .human: "Human",
            .home: "Home",
            .fitness: "Fitness",
            .nature: "Nature",
            .editing: "Editing",
            .textformatting: "Text Formatting",
            .media: "Media",
            .keyboard: "Keyboard",
            .commerce: "Commerce",
            .time: "Time",
            .health: "Health",
            .shapes: "Shapes",
            .arrows: "Arrows",
            .indeces: "Indices",
            .math: "Math",
            .custom: "Custom"
        ]

        for (category, expectedLabel) in expectedLabels {
            #expect(category.label == expectedLabel, "Label for \(category) does not match")
        }
    }
}
