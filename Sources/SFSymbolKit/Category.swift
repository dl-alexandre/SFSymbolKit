//
//  Category.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// A struct representing a category, conforming to Codable, Equatable, and Hashable protocols.
public struct Category: Codable, Equatable, Hashable {
    /// The icon associated with the category.
    public let icon: String

    /// The key identifying the category.
    public let key: String

    /// The label of the category.
    public let label: String
}

/// Protocol for categorizing symbols.
/// Classes conforming to this protocol must implement the categorize method to return a list of categories.
public protocol Categorizing {
    /// Method to categorize symbols.
    /// - Returns: An array of `Category` objects representing symbol categories.
    func categorize() -> [Category]
}

/// Class implementing the Categorizing protocol to decode symbol categories from a plist file.
public class Categorizer: Categorizing {
    /// Method to decode the plist into an array of `Category` objects.
    /// - Returns: An array of `Category` objects.
    public func categorize() -> [Category] {
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
}
