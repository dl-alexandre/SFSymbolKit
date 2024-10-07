//
//  convertSymbols.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// Function to load and decode the plist into structures
public func convertSymbols() -> [Symbol] {
    let dict: [String: [String]] = decodeSymbolDict()

    var symbols: [Symbol] = []

    for (key, categoryNames) in dict {
        let categories: [SymbolCategory] = categoryNames.compactMap { categoryName in
            categoryFromString(categoryName)
        }
        let symbol = Symbol(name: key, categories: categories)
        symbols.append(symbol)

    }

    return symbols
}

public func categoryFromString(_ categoryName: String) -> SymbolCategory? {
    switch categoryName.lowercased() {
    case "all": return .all
    case "whatsnew": return .whatsnew
    case "multicolor": return .multicolor
    case "variablecolor": return .variablecolor
    case "communication": return .communication
    case "weather": return .weather
    case "maps": return .maps
    case "objectsandtools": return .objectsandtools
    case "devices": return .devices
    case "cameraandphotos": return .cameraandphotos
    case "gaming": return .gaming
    case "connectivity": return .connectivity
    case "transportation": return .transportation
    case "automotive": return .automotive
    case "accessibility": return .accessibility
    case "privacyandsecurity": return .privacyandsecurity
    case "human": return .human
    case "home": return .home
    case "fitness": return .fitness
    case "nature": return .nature
    case "editing": return .editing
    case "textformatting": return .textformatting
    case "media": return .media
    case "keyboard": return .keyboard
    case "commerce": return .commerce
    case "time": return .time
    case "health": return .health
    case "shapes": return .shapes
    case "arrows": return .arrows
    case "indeces": return .indeces
    case "math": return .math
    case "custom": return .custom
    default: return nil
    }
}
