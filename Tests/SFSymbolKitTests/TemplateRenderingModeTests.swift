//
//  TemplateRenderingModeTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
@testable import SFSymbolKit
import SwiftUI

class TemplateRenderingModeTests: XCTestCase {

    func testTemplateRenderingModeNames() {
        let expectedNames = ["Template", "Original"]

        for (index, mode) in TemplateRenderingMode.allCases.enumerated() {
            XCTAssertEqual(mode.name, expectedNames[index], "Expected \(expectedNames[index]) but got \(mode.name)")
        }
    }

    func testTemplateRenderingModeValues() {
        let expectedScales: [Image.TemplateRenderingMode] = [.template, .original]

        for (index, mode) in TemplateRenderingMode.allCases.enumerated() {
            XCTAssertEqual(mode.scale, expectedScales[index], "Expected \(expectedScales[index]) but got \(mode.scale)")
        }
    }
}
