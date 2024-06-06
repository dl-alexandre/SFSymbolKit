//
//  FontLoader.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import CoreText
import Foundation
#if os(OSX)
import AppKit
#else
import UIKit
#endif


public struct FontLoader {
    public static func loadFonts() {
        fontNames.forEach { register(fontName: $0) }
    }
    
    public static func registerFonts() {
        fontNames.forEach { register(fontName: $0) }
    }
    
    static func registerFont(fileName: String) {
        guard let fontURL = Bundle.module.url(forResource: "Symbols/\(fileName)", withExtension: nil),
              let fontData = NSData(contentsOf: fontURL),
              let dataProvider = CGDataProvider(data: fontData),
              let fontRef = CGFont(dataProvider) else {
            print("Error loading font.")
            return
        }
        
        var error: Unmanaged<CFError>?
        
        if !CTFontManagerRegisterGraphicsFont(fontRef, &error) {
            print("Error registering font: \(error.debugDescription)")
        }
    }
    
    
    
    
//    private func url(fontName: String) -> URL? {
//        return Bundle.module.url(forResource: fontName, withExtension: nil)
//    }
#if os(iOS) || os(tvOS) || os(visionOS)
    static func register(fontName: String) {
        guard let url = Bundle.module.url(forResource: fontName, withExtension: nil) else {
            assertionFailure("Can not locate font \(fontName)")
            return
        }
        
        var error: Unmanaged<CFError>?
        if !CTFontManagerRegisterFontsForURL(url as CFURL, .process,    &error) {
            if let error = error {
                let description: CFString =     CFErrorCopyDescription(error    .takeUnretainedValue())
                assertionFailure("Can not locate font \(fontName).  Reason \(description)")
            } else {
                assertionFailure("Can not register font \(fontName)")
            }
        }
    }
    
#else
    static func register(fontName: String) {}
    #endif
    
    
    func registerFontsFromBundle(named names: [String]) {
        let bundle: Bundle = {
#if SWIFT_PACKAGE
            return Bundle.module
#else
            return Bundle.main
#endif
        }()
        let fontURLs = names
            .compactMap { bundle.url(forResource: $0, withExtension: nil) }
        
        CTFontManagerRegisterFontURLs(fontURLs as CFArray, .process, true) { errors, done in
            // CTFontManager.h points out that the CFArray, if not empty, contains CFError values.
            let errors = errors as! [CFError]
            guard errors.isEmpty else {
                preconditionFailure("Registering font failed: \(errors.map(\.localizedDescription))")
            }
            return true  // true: should continue; false: should stop
        }
    }
    
    
}

let fontNames = [
"SFSymbolsFallback.otf",
"SF-Pro.ttf",
"SF-Pro-Text-UltralightItalic.otf",
"SF-Pro-Text-Ultralight.otf",
"SF-Pro-Text-ThinItalic.otf",
"SF-Pro-Text-Thin.otf",
"SF-Pro-Text-SemiboldItalic.otf",
"SF-Pro-Text-Semibold.otf",
"SF-Pro-Text-RegularItalic.otf",
"SF-Pro-Text-Regular.otf",
"SF-Pro-Text-MediumItalic.otf",
"SF-Pro-Text-Medium.otf",
"SF-Pro-Text-LightItalic.otf",
"SF-Pro-Text-Light.otf",
"SF-Pro-Text-HeavyItalic.otf",
"SF-Pro-Text-Heavy.otf",
"SF-Pro-Text-BoldItalic.otf",
"SF-Pro-Text-Bold.otf",
"SF-Pro-Text-BlackItalic.otf",
"SF-Pro-Text-Black.otf",
"SF-Pro-Rounded-Ultralight.otf",
"SF-Pro-Rounded-Thin.otf",
"SF-Pro-Rounded-Semibold.otf",
"SF-Pro-Rounded-Regular.otf",
"SF-Pro-Rounded-Medium.otf",
"SF-Pro-Rounded-Light.otf",
"SF-Pro-Rounded-Heavy.otf",
"SF-Pro-Rounded-Bold.otf",
"SF-Pro-Rounded-Black.otf",
"SF-Pro-Italic.ttf",
"SF-Pro-Display-UltralightItalic.otf",
"SF-Pro-Display-Ultralight.otf",
"SF-Pro-Display-ThinItalic.otf",
"SF-Pro-Display-Thin.otf",
"SF-Pro-Display-SemiboldItalic.otf",
"SF-Pro-Display-Semibold.otf",
"SF-Pro-Display-RegularItalic.otf",
"SF-Pro-Display-Regular.otf",
"SF-Pro-Display-MediumItalic.otf",
"SF-Pro-Display-Medium.otf",
"SF-Pro-Display-LightItalic.otf",
"SF-Pro-Display-Light.otf",
"SF-Pro-Display-HeavyItalic.otf",
"SF-Pro-Display-Heavy.otf",
"SF-Pro-Display-BoldItalic.otf",
"SF-Pro-Display-Bold.otf",
"SF-Pro-Display-BlackItalic.otf",
"SF-Pro-Display-Black.otf",
"SF-Compact.ttf",
"SF-Compact-Text-UltralightItalic.otf",
"SF-Compact-Text-Ultralight.otf",
"SF-Compact-Text-ThinItalic.otf",
"SF-Compact-Text-Thin.otf",
"SF-Compact-Text-SemiboldItalic.otf",
"SF-Compact-Text-Semibold.otf",
"SF-Compact-Text-RegularItalic.otf",
"SF-Compact-Text-Regular.otf",
"SF-Compact-Text-MediumItalic.otf",
"SF-Compact-Text-Medium.otf",
"SF-Compact-Text-LightItalic.otf",
"SF-Compact-Text-Light.otf",
"SF-Compact-Text-HeavyItalic.otf",
"SF-Compact-Text-Heavy.otf",
"SF-Compact-Text-BoldItalic.otf",
"SF-Compact-Text-Bold.otf",
"SF-Compact-Text-BlackItalic.otf",
"SF-Compact-Text-Black.otf",
"SF-Compact-Rounded-Ultralight.otf",
"SF-Compact-Rounded-Thin.otf",
"SF-Compact-Rounded-Semibold.otf",
"SF-Compact-Rounded-Regular.otf",
"SF-Compact-Rounded-Medium.otf",
"SF-Compact-Rounded-Light.otf",
"SF-Compact-Rounded-Heavy.otf",
"SF-Compact-Rounded-Bold.otf",
"SF-Compact-Rounded-Black.otf",
"SF-Compact-Italic.ttf",
"SF-Compact-Display-Ultralight.otf",
"SF-Compact-Display-Thin.otf",
"SF-Compact-Display-Semibold.otf",
"SF-Compact-Display-Regular.otf",
"SF-Compact-Display-Medium.otf",
"SF-Compact-Display-Light.otf",
"SF-Compact-Display-Heavy.otf",
"SF-Compact-Display-Bold.otf",
"SF-Compact-Display-Black.otf"
]