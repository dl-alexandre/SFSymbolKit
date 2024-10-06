//
//  SymbolCategoryTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//


import XCTest
import SwiftUI
@testable import SFSymbolKit

class SymbolCategoryTests: XCTestCase {

    func testSymbolCategoryLabels() {
        let expectedLabels: [SymbolCategory: String] = [
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
            XCTAssertEqual(category.label, expectedLabel, "Label for \(category) does not match")
        }
    }

    func testSymbolCategoryIcons() {
        let expectedIcons: [SymbolCategory: String] = [
            .all: "square.grid.2x2",
            .whatsnew: "sparkles",
            .multicolor: "paintpalette",
            .variablecolor: "slider.horizontal.below.square.and.square.filled",
            .communication: "message",
            .weather: "cloud.sun",
            .maps: "map",
            .objectsandtools: "folder",
            .devices: "desktopcomputer",
            .cameraandphotos: "camera",
            .gaming: "gamecontroller",
            .connectivity: "antenna.radiowaves.left.and.right",
            .transportation: "car.fill",
            .automotive: "steeringwheel",
            .accessibility: "accessibility",
            .privacyandsecurity: "lock",
            .human: "person.crop.circle",
            .home: "house",
            .fitness: "figure.run",
            .nature: "leaf",
            .editing: "slider.horizontal.3",
            .textformatting: "textformat",
            .media: "playpause",
            .keyboard: "command",
            .commerce: "cart",
            .time: "timer",
            .health: "heart",
            .shapes: "square.on.circle",
            .arrows: "arrow.forward",
            .indeces: "a.circle",
            .math: "x.squareroot",
            .custom: "square.grid.2x2"
        ]
    }
}
