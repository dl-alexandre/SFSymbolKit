//
//  decodePList.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// Decodes the contents of symbol_categories.plist file into an array of strings.
public func convertSymbolsAsArrayOfStrings() -> [String] {

    /// Decode the data into a dictionary of type [String: String]
    let dict = decodeSymbolDict()

    /// Extract the keys from the dictionary, which represent the symbol categories.
    let symbols = dict.keys

    /// Return the keys as an array of strings.
    return Array(symbols)
}
