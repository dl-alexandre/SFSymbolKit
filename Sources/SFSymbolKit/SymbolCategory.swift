//
//  SymbolCategory.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// A struct representing a category, conforming to Codable, Equatable, and Hashable protocols.
public struct SymbolCategory: Codable, Equatable, Hashable {
    /// The icon associated with the category.
    public let icon: String

    /// The key identifying the category.
    public let key: String

    /// The label of the category.
    public let label: String

    /// Publicly Initialize SymbolCategory
    public init(icon: String, key: String, label: String) {
        self.icon = icon
        self.key = key
        self.label = label
    }
}

/// Protocol for categorizing symbols.
/// Classes conforming to this protocol must implement the categorize method to return a list of categories.
public protocol Categorizing {
    /// Method to categorize symbols.
    /// - Returns: An array of `SymbolCategory` objects representing symbol categories.
    func categorize() -> [SymbolCategory]
}

/// Class implementing the Categorizing protocol to decode symbol categories from a plist file.
public class Categorizer: Categorizing {
    /// Publicly Initialize Categorizer
    public init() {}

    /// Method to decode the plist into an array of `SymbolCategory` objects.
    /// - Returns: An array of `SymbolCategory` objects.
    public func categorize() -> [SymbolCategory] {
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
            let categories = try decoder.decode([SymbolCategory].self, from: data)
            return categories
        } catch {
            fatalError("Error decoding plist: \(error)")
        }
    }
}

/// Function to convert a list of categories into a dictionary.
/// - Parameter categorization: An instance conforming to the Categorizing protocol.
/// - Returns: A dictionary where the keys are category keys and the values are `SymbolCategory` objects.
public func convertCategories(categorization: Categorizing) -> [String: SymbolCategory] {
    let categoryList: [SymbolCategory] = categorization.categorize()
    var categoryDict: [String: SymbolCategory] = [:]

    for category in categoryList {
        categoryDict[category.key] = category
    }

    return categoryDict
}
