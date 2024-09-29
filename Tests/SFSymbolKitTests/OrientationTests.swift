//
//  OrientationTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class OrientationTests: XCTestCase {

    func testOrientationNames() {
        let expectedNames = [
            "Up", "Down", "Left", "Right",
            "Small Mirrored", "Medium Mirrored",
            "Large Mirrored", "Right Mirrored"
        ]

        for (index, orientation) in Orientation.allCases.enumerated() {
            XCTAssertEqual(
                orientation.name,
                expectedNames[index],
                "Expected \(expectedNames[index]) but got \(orientation.name)"
            )
        }
    }

    func testOrientationValues() {
        let expectedScales: [Image.Orientation] = [
            .up, .down, .left, .right,
                .upMirrored, .downMirrored,
                .leftMirrored, .rightMirrored
        ]

        for (index, orientation) in Orientation.allCases.enumerated() {
            XCTAssertEqual(
                orientation.scale,
                expectedScales[index],
                "Expected \(expectedScales[index]) but got \(orientation.scale)"
            )
        }
    }
}
