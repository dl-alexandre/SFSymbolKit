//
//  Fonts.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

public enum Fonts: Int, CaseIterable {
    case sFCompactDisplayBlack, sFSymbolsFallback, sFPro, sFProTextUltralightItalic, sFProTextUltralight, sFProTextThinItalic, sFProTextThin, sFProTextSemiboldItalic, sFProTextSemibold, sFProTextRegularItalic, sFProTextRegular, sFProTextMediumItalic, sFProTextMedium, sFProTextLightItalic, sFProTextLight, sFProTextHeavyItalic, sFProTextHeavy, sFProTextBoldItalic, sFProTextBold, sFProTextBlackItalic, sFProTextBlack, sFProRoundedUltralight, sFProRoundedThin, sFProRoundedSemibold, sFProRoundedRegular, sFProRoundedMedium, sFProRoundedLight, sFProRoundedHeavy, sFProRoundedBold, sFProRoundedBlack, sFProItalic, sFProDisplayUltralightItalic, sFProDisplayUltralight, sFProDisplayThinItalic, sFProDisplayThin, sFProDisplaySemiboldItalic, sFProDisplaySemibold, sFProDisplayRegularItalic, sFProDisplayRegular, sFProDisplayMediumItalic, sFProDisplayMedium, sFProDisplayLightItalic, sFProDisplayLight, sFProDisplayHeavyItalic, sFProDisplayHeavy, sFProDisplayBoldItalic, sFProDisplayBold, sFProDisplayBlackItalic, sFProDisplayBlack, sFCompact, sFCompactTextUltralightItalic, sFCompactTextUltralight, sFCompactTextThinItalic, sFCompactTextThin, sFCompactTextSemiboldItalic, sFCompactTextSemibold, sFCompactTextRegularItalic, sFCompactTextRegular, sFCompactTextMediumItalic, sFCompactTextMedium, sFCompactTextLightItalic, sFCompactTextLight, sFCompactTextHeavyItalic, sFCompactTextHeavy, sFCompactTextBoldItalic, sFCompactTextBold, sFCompactTextBlackItalic, sFCompactTextBlack, sFCompactRoundedUltralight, sFCompactRoundedThin, sFCompactRoundedSemibold, sFCompactRoundedRegular, sFCompactRoundedMedium, sFCompactRoundedLight, sFCompactRoundedHeavy, sFCompactRoundedBold, sFCompactRoundedBlack, sFCompactItalic, sFCompactDisplayUltralight, sFCompactDisplayThin, sFCompactDisplaySemibold, sFCompactDisplayRegular, sFCompactDisplayMedium, sFCompactDisplayLight, sFCompactDisplayHeavy, sFCompactDisplayBold
    
    public var postScriptName: String {
        switch self {
            case .sFCompactDisplayBlack: return "SFCompactDisplayBlack"
            case .sFSymbolsFallback: return "SFSymbolsFallback"
            case .sFPro: return "sFPro"
            case .sFProTextUltralightItalic: return "SFProText-UltralightItalic"
            case .sFProTextUltralight: return "SFProText-Ultralight"
            case .sFProTextThinItalic: return "SFProText-ThinItalic"
            case .`sFProTextThin`: return "SFProText-Thin"
            case .sFProTextSemiboldItalic: return "SFProText-SemiboldItalic"
            case .sFProTextSemibold: return "SFProText-Semibold"
            case .sFProTextRegularItalic: return "SFProText-RegularItalic"
            case .sFProTextRegular: return "SFProText-Regular"
            case .sFProTextMediumItalic: return "SFProText-MediumItalic"
            case .sFProTextMedium: return "SFProText-Medium"
            case .sFProTextLightItalic: return "SFProText-LightItalic"
            case .sFProTextLight: return "SFProText-Light"
            case .sFProTextHeavyItalic: return "SFProText-HeavyItalic"
            case .sFProTextHeavy: return "SFProText-Heavy"
            case .sFProTextBoldItalic: return "SFProText-BoldItalic"
            case .sFProTextBold: return "SFProText-Bold"
            case .sFProTextBlackItalic: return "SFProText-BlackItalic"
            case .sFProTextBlack: return "SFProText-Black"
            case .sFProRoundedUltralight: return "SFProRounded-Ultralight"
            case .sFProRoundedThin: return "SFProRounded-Thin"
            case .sFProRoundedSemibold: return "SFProRounded-Semibold"
            case .sFProRoundedRegular: return "SFProRounded-Regular"
            case .sFProRoundedMedium: return "SFProRounded-Medium"
            case .sFProRoundedLight: return "SFProRounded-Light"
            case .sFProRoundedHeavy: return "SFProRounded-Heavy"
            case .sFProRoundedBold: return "SFProRounded-Bold"
            case .sFProRoundedBlack: return "SFProRounded-Black"
            case .sFProItalic: return "SFProItalic"
            case .sFProDisplayUltralightItalic: return "SFProDisplay-UltralightItalic"
            case .sFProDisplayUltralight: return "SFProDisplay-Ultralight"
            case .sFProDisplayThinItalic: return "SFProDisplay-ThinItalic"
            case .sFProDisplayThin: return "SFProDisplay-Thin"
            case .sFProDisplaySemiboldItalic: return "SFProDisplay-SemiboldItalic"
            case .sFProDisplaySemibold: return "SFProDisplay-Semibold"
            case .sFProDisplayRegularItalic: return "SFProDisplay-RegularItalic"
            case .sFProDisplayRegular: return "SFProDisplay-Regular"
            case .sFProDisplayMediumItalic: return "SFProDisplay-MediumItalic"
            case .sFProDisplayMedium: return "SFProDisplay-Medium"
            case .sFProDisplayLightItalic: return "SFProDisplay-LightItalic"
            case .sFProDisplayLight: return "SFProDisplay-Light"
            case .sFProDisplayHeavyItalic: return "SFProDisplay-HeavyItalic"
            case .sFProDisplayHeavy: return "SFProDisplay-Heavy"
            case .sFProDisplayBoldItalic: return "SFProDisplay-BoldItalic"
            case .sFProDisplayBold: return "SFProDisplay-Bold"
            case .sFProDisplayBlackItalic: return "SFProDisplay-BlackItalic"
            case .sFProDisplayBlack: return "SFProDisplay-Black"
            case .sFCompact: return "SFCompact"
            case .sFCompactTextUltralightItalic: return "SFCompactText-UltralightItalic"
            case .sFCompactTextUltralight: return "SFCompactText-Ultralight"
            case .sFCompactTextThinItalic: return "SFCompactText-ThinItalic"
            case .sFCompactTextThin: return "SFCompactText-Thin"
            case .sFCompactTextSemiboldItalic: return "SFCompactText-SemiboldItalic"
            case .sFCompactTextSemibold: return "SFCompactText-Semibold"
            case .sFCompactTextRegularItalic: return "SFCompactText-RegularItalic"
            case .sFCompactTextRegular: return "SFCompactText-Regular"
            case .sFCompactTextMediumItalic: return "SFCompactText-MediumItalic"
            case .sFCompactTextMedium: return "SFCompactText-Medium"
            case .sFCompactTextLightItalic: return "SFCompactText-LightItalic"
            case .sFCompactTextLight: return "SFCompactText-Light"
            case .sFCompactTextHeavyItalic: return "SFCompactText-HeavyItalic"
            case .sFCompactTextHeavy: return "SFCompactText-Heavy"
            case .sFCompactTextBoldItalic: return "SFCompactText-BoldItalic"
            case .sFCompactTextBold: return "SFCompactText-Bold"
            case .sFCompactTextBlackItalic: return "SFCompactText-BlackItalic"
            case .sFCompactTextBlack: return "SFCompactText-Black"
            case .sFCompactRoundedUltralight: return "SFCompactRounded-Ultralight"
            case .sFCompactRoundedThin: return "SFCompactRounded-Thin"
            case .sFCompactRoundedSemibold: return "SFCompactRounded-Semibold"
            case .sFCompactRoundedRegular: return "SFCompactRounded-Regular"
            case .sFCompactRoundedMedium: return "SFCompactRounded-Medium"
            case .sFCompactRoundedLight: return "SFCompactRounded-Light"
            case .sFCompactRoundedHeavy: return "SFCompactRounded-Heavy"
            case .sFCompactRoundedBold: return "SFCompactRounded-Bold"
            case .sFCompactRoundedBlack: return "SFCompactRounded-Black"
            case .sFCompactItalic: return "SFCompactItalic"
            case .sFCompactDisplayUltralight: return "SFCompactDisplay-Ultralight"
            case .sFCompactDisplayThin: return "SFCompactDisplay-Thin"
            case .sFCompactDisplaySemibold: return "SFCompactDisplay-Semibold"
            case .sFCompactDisplayRegular: return "SFCompactDisplay-Regular"
            case .sFCompactDisplayMedium: return "SFCompactDisplay-Medium"
            case .sFCompactDisplayLight: return "SFCompactDisplay-Light"
            case .sFCompactDisplayHeavy: return "SFCompactDisplay-Heavy"
            case .sFCompactDisplayBold: return "SFCompactDisplay-Bold"
        }
    }
}