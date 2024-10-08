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
    let icon: String

    /// The key identifying the category.
    let key: String

    /// The label of the category.
    let label: String
}

/// Protocol for categorizing symbols.
/// Classes conforming to this protocol must implement the categorize method to return a list of categories.
public protocol Categorizing {
    /// Method to categorize symbols.
    /// - Returns: An array of `Category` objects representing symbol categories.
    func categorize() -> [Category]
}

/// Class implementing the Categorizing protocol to decode symbol categories from a plist file.
public class Categorizor: Categorizing {
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

/// Protocol for symbolizing categories.
/// Classes conforming to this protocol must implement the symbolize method to return a list of symbols.
public protocol Symbolizing {
    /// Method to symbolize categories.
    /// - Parameter categorization: An instance conforming to the Categorizing protocol.
    /// - Returns: An array of `Symbol` objects.
    func symbolize(categorization: Categorizing) -> [Symbol]
}

/// Function to convert a list of categories into a dictionary.
/// - Parameter categorization: An instance conforming to the Categorizing protocol.
/// - Returns: A dictionary where the keys are category keys and the values are `Category` objects.
public func convertCategories(categorization: Categorizing) -> [String: Category] {
    let categoryList: [Category] = categorization.categorize()
    var categoryDict: [String: Category] = [:]

    for category in categoryList {
        categoryDict[category.key] = category
    }

    return categoryDict
}
