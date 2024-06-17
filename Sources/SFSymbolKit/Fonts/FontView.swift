//
//  FontView.swift
//  SymbolGrid
//
//  Created by Dalton Alexandre on 6/8/24. 􀫊
//

import SwiftUI

public struct FontView: View {
    public var body: some View {
        List(postScriptNames, id: \.self) { fontName in
            Text("\(fontName) \(Image(systemName: "hand.point.right"))")
                .font(.custom(fontName, size: 18))
                .padding()
        }
    }
}

#Preview {
    FontView()
}

let postScriptNames = [
    "SFProText-UltralightItalic",
    "SFProText-Ultralight",
    "SFProText-ThinItalic",
    "SFProText-Thin",
    "SFProText-SemiboldItalic",
    "SFProText-Semibold",
    "SFProText-RegularItalic",
    "SFProText-Regular",
    "SFProText-MediumItalic",
    "SFProText-Medium",
    "SFProText-LightItalic",
    "SFProText-Light",
    "SFProText-HeavyItalic",
    "SFProText-Heavy",
    "SFProText-BoldItalic",
    "SFProText-Bold",
    "SFProText-BlackItalic",
    "SFProText-Black",
    "SFProRounded-Ultralight",
    "SFProRounded-Thin",
    "SFProRounded-Semibold",
    "SFProRounded-Regular",
    "SFProRounded-Medium",
    "SFProRounded-Light",
    "SFProRounded-Heavy",
    "SFProRounded-Bold",
    "SFProRounded-Black",
    "SFProDisplay-UltralightItalic",
    "SFProDisplay-Ultralight",
    "SFProDisplay-ThinItalic",
    "SFProDisplay-Thin",
    "SFProDisplay-SemiboldItalic",
    "SFProDisplay-Semibold",
    "SFProDisplay-RegularItalic",
    "SFProDisplay-Regular",
    "SFProDisplay-MediumItalic",
    "SFProDisplay-Medium",
    "SFProDisplay-LightItalic",
    "SFProDisplay-Light",
    "SFProDisplay-HeavyItalic",
    "SFProDisplay-Heavy",
    "SFProDisplay-BoldItalic",
    "SFProDisplay-Bold",
    "SFProDisplay-BlackItalic",
    "SFProDisplay-Black",
    "SFCompactText-UltralightItalic",
    "SFCompactText-Ultralight",
    "SFCompactText-ThinItalic",
    "SFCompactText-Thin",
    "SFCompactText-SemiboldItalic",
    "SFCompactText-Semibold",
    "SFCompactText-RegularItalic",
    "SFCompactText-Regular",
    "SFCompactText-MediumItalic",
    "SFCompactText-Medium",
    "SFCompactText-LightItalic",
    "SFCompactText-Light",
    "SFCompactText-HeavyItalic",
    "SFCompactText-Heavy",
    "SFCompactText-BoldItalic",
    "SFCompactText-Bold",
    "SFCompactText-BlackItalic",
    "SFCompactText-Black",
    "SFCompactRounded-Ultralight",
    "SFCompactRounded-Thin",
    "SFCompactRounded-Semibold",
    "SFCompactRounded-Regular",
    "SFCompactRounded-Medium",
    "SFCompactRounded-Light",
    "SFCompactRounded-Heavy",
    "SFCompactRounded-Bold",
    "SFCompactRounded-Black",
    "SFCompactDisplay-Ultralight",
    "SFCompactDisplay-Thin",
    "SFCompactDisplay-Semibold",
    "SFCompactDisplay-Regular",
    "SFCompactDisplay-Medium",
    "SFCompactDisplay-Light",
    "SFCompactDisplay-Heavy",
    "SFCompactDisplay-Bold",
    "SFCompactDisplay-Black"
]
