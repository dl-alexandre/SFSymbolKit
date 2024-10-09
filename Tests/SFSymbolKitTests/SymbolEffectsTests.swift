//
//  SymbolEffectsTests.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Testing
@testable import SFSymbolKit
import SwiftUI

// Placeholder types for testing purposes
protocol SymbolEffect {}
struct AppearEffect: SymbolEffect {}
struct AutomaticEffect: SymbolEffect {}
struct BreatheEffect: SymbolEffect {}
struct BounceEffect: SymbolEffect {}
struct DisappearEffect: SymbolEffect {}
struct PulseEffect: SymbolEffect {}
struct ReplaceEffect: SymbolEffect {}
struct RotateEffect: SymbolEffect {}
struct ScaleEffect: SymbolEffect {}
struct VariableColorEffect: SymbolEffect {}
struct WiggleEffect: SymbolEffect {}

@Suite("Symbol Effect Tests")
struct SymbolEffectsTests {
    @Test("Symbol Effect Name Test")
    func testSymbolEffectsName() async throws {
        #expect(SymbolEffects.appear.name == "Appear")
        #expect(SymbolEffects.automatic.name == "Automatic")
        #expect(SymbolEffects.breathe.name == "Breathe")
        #expect(SymbolEffects.bounce.name == "Bounce")
        #expect(SymbolEffects.disappear.name == "Disappear")
        #expect(SymbolEffects.pulse.name == "Pulse")
        #expect(SymbolEffects.replace.name == "Replace")
        #expect(SymbolEffects.rotate.name == "Rotate")
        #expect(SymbolEffects.scale.name == "Scale")
        #expect(SymbolEffects.variableColor.name == "Variable Color")
        #expect(SymbolEffects.wiggle.name == "Wiggle")
    }

//    @available(iOS 18.0, macOS 15.0, *)
//    func testSymbolEffectsEffect() {
//        XCTAssertTrue(SymbolEffects.appear.effect is AppearEffect)
//        XCTAssertTrue(SymbolEffects.automatic.effect is AutomaticEffect)
//        XCTAssertTrue(SymbolEffects.breathe.effect is BreatheEffect)
//        XCTAssertTrue(SymbolEffects.bounce.effect is BounceEffect)
//        XCTAssertTrue(SymbolEffects.disappear.effect is DisappearEffect)
//        XCTAssertTrue(SymbolEffects.pulse.effect is PulseEffect)
//        XCTAssertTrue(SymbolEffects.replace.effect is ReplaceEffect)
//        XCTAssertTrue(SymbolEffects.rotate.effect is RotateEffect)
//        XCTAssertTrue(SymbolEffects.scale.effect is ScaleEffect)
//        XCTAssertTrue(SymbolEffects.variableColor.effect is VariableColorEffect)
//        XCTAssertTrue(SymbolEffects.wiggle.effect is WiggleEffect)
//    }
//
//    func testRandomSymbolEffect() {
//        let effect = randomSymbolEffect()
//        XCTAssertNotNil(effect)
//        XCTAssertTrue(effect is SymbolEffect)
//    }
}
