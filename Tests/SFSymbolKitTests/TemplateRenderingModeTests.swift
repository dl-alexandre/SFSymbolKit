//
//  TemplateRenderingModeTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI
@Suite("Template Rendering Mode Tests")
struct TemplateRenderingModeTests {
    @Test("Template Rendering Mode Name Test")
    func testTemplateRenderingModeNames() async throws {
        let expectedNames = ["Template", "Original"]
        for (index, mode) in TemplateRenderingMode.allCases.enumerated() {
            #expect(mode.name == expectedNames[index], "Expected \(expectedNames[index]) but got \(mode.name)")
        }
    }
    @Test("Template Rendering Mode Value Test")
    func testTemplateRenderingModeValues() async throws {
        let expectedScales: [Image.TemplateRenderingMode] = [.template, .original]

        for (index, mode) in TemplateRenderingMode.allCases.enumerated() {
            #expect(mode.scale == expectedScales[index], "Expected \(expectedScales[index]) but got \(mode.scale)")
        }
    }
}
