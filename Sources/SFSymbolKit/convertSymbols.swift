//
//  convertSymbols.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// Function to load and decode the plist into structures
public func convertSymbols() -> [Symbol] {
    let dict = decodeSymbolDict()

    var symbols: [Symbol] = []

    for (key, categoryNames) in dict {
        let categories = categoryNames.map { Category(icon: "", key: "", label: $0) }
        let symbol = Symbol(name: key, category: categories)
        symbols.append(symbol)
    }

    return symbols
}

