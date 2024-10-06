//
//  decodeSymbolDict.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// Function to decode the plist into a dictionary of symbols
public func decodeSymbolDict() -> [String: [String]] {
    /// Get the URL of the plist file in the main bundle
    guard let fileURL = Bundle.module.url(forResource: "Symbols/symbol_categories", withExtension: "plist") else {
        fatalError("Can't find symbol_categories.plist")
    }

    /// Get the data from the plist file
    guard let data = try? Data(contentsOf: fileURL) else {
        fatalError("Can't read data from symbol_categories.plist")
    }

    /// Initialize a PropertyListDecoder to decode the plist data
    let decoder = PropertyListDecoder()
    do {
        let dict = try decoder.decode([String: [String]].self, from: data)
        return dict
    } catch {
        fatalError("Can't decode data from symbol_categories.plist: \(error)")
    }
}
