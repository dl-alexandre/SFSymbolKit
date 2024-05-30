    //
    //  decodePList.swift
    //
    //
    //  Created by Dalton Alexandre on 5/29/24.
    //

import Foundation

    /// Decodes the contents of symbol_categories.plist file into an array of strings.
public func decodePList() -> [String] {
    
        /// Get the URL of the plist file in the main bundle
    guard let fileURL = Bundle.module.url(forResource: "Resources/symbol_categories", withExtension: "plist") else {
        fatalError("Can't find symbol_categories.plist")
    }
    
        /// Get the data from the plist file
    guard let data = try? Data(contentsOf: fileURL) else {
        fatalError("Can't read data from symbol_categories.plist")
    }
        /// Initialize a PropertyListDecoder to decode the plist data.
    let decoder = PropertyListDecoder()
    
        /// Decode the data into a dictionary of type [String: String]
    guard let dict = try? decoder.decode([String: [String]].self, from: data) else {
        fatalError("Can't decode data from symbol_categories.plist")
    }
        /// Extract the keys from the dictionary, which represent the symbol categories.
    let symbols = dict.keys
    
        /// Return the keys as an array of strings.
    return Array(symbols)
}
