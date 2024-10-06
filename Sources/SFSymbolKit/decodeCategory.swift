//
//  decodeCategory.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// Function to load and decode the categories.plist
public func decodeCategoryList() -> [Category] {
    /// Get the URL of the plist file in the main bundle
    guard let fileURL = Bundle.module.url(forResource: "Symbols/categories", withExtension: "plist") else {
        fatalError("Can't find symbol_categories.plist")
    }

    /// Get the data from the plist file
    guard let data = try? Data(contentsOf: fileURL) else {
        fatalError("Can't read data from symbol_categories.plist")
    }

    /// Initialize a PropertyListDecoder to decode the plist data
    let decoder = PropertyListDecoder()
    do {
        let categories = try decoder.decode([Category].self, from: data)
        return categories
    } catch {
        fatalError("Error decoding plist: \(error)")
    }
}
