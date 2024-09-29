//
//  SymbolEffectsTests.swift
//  SFSymbolKit
//
//  Created by Dalton Alexandre on 9/29/24.
//

import XCTest
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

@available(iOS 17.0, *)
final class SymbolEffectsTests: XCTestCase {

    func testSymbolEffectsName() {
        XCTAssertEqual(SymbolEffects.appear.name, "Appear")
        XCTAssertEqual(SymbolEffects.automatic.name, "Automatic")
        XCTAssertEqual(SymbolEffects.breathe.name, "Breathe")
        XCTAssertEqual(SymbolEffects.bounce.name, "Bounce")
        XCTAssertEqual(SymbolEffects.disappear.name, "Disappear")
        XCTAssertEqual(SymbolEffects.pulse.name, "Pulse")
        XCTAssertEqual(SymbolEffects.replace.name, "Replace")
        XCTAssertEqual(SymbolEffects.rotate.name, "Rotate")
        XCTAssertEqual(SymbolEffects.scale.name, "Scale")
        XCTAssertEqual(SymbolEffects.variableColor.name, "Variable Color")
        XCTAssertEqual(SymbolEffects.wiggle.name, "Wiggle")
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
