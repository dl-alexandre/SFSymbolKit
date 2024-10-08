//
//  convertSymbols.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

/// A struct representing a symbol, conforming to Codable, Hashable, and Equatable protocols.
public struct Symbol: Codable, Hashable, Equatable {

    /// Checks for equality between two Symbol instances.
    /// - Parameters:
    ///   - lhs: The left-hand side Symbol.
    ///   - rhs: The right-hand side Symbol.
    /// - Returns: A boolean indicating whether the two Symbol instances are equal.
    public static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.name == rhs.name && lhs.categories == rhs.categories
    }

    /// The name of the symbol.
    public let name: String
    /// The categories associated with the symbol.
    public let categories: [SymbolCategory]?

    /// Initializes a new Symbol instance.
    /// - Parameters:
    ///   - name: The name of the symbol.
    ///   - categories: The categories associated with the symbol.

    public init(name: String, categories: [SymbolCategory]) {
        self.name = name
        self.categories = categories
    }

    enum CodingKeys: String, CodingKey {
        case name
        case category
    }

    /// Initializes a new Symbol instance from a decoder.
    /// - Parameter decoder: The decoder to read data from.
    /// - Throws: An error if decoding fails.
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        categories = try container.decode([SymbolCategory].self, forKey: .category)
    }

    /// Encodes the Symbol instance to an encoder.
    /// - Parameter encoder: The encoder to write data to.
    /// - Throws: An error if encoding fails.
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(categories?.description, forKey: .category)
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
/// - Returns: A dictionary where the keys are category keys and the values are `SymbolCategory` objects.
public func convertCategories(categorization: Categorizing) -> [String: SymbolCategory] {
    let categoryList: [SymbolCategory] = categorization.categorize()
    var categoryDict: [String: SymbolCategory] = [:]

    for category in categoryList {
        categoryDict[category.key] = category
    }

    return categoryDict
}

/// Class responsible for symbolizing categories by decoding a plist file.
public class Symbolizer: Symbolizing {
    /// Publicly Initialize Symbolizer
    public init() {}

    /// Function to decode the plist into a dictionary of symbols.
    /// - Parameter categorization: An instance conforming to the `Categorizing` protocol.
    /// - Returns: An array of `Symbol` objects.
    public func symbolize(categorization: Categorizing) -> [Symbol] {
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
        let categoryDict: [String: SymbolCategory] = convertCategories(categorization: categorization)

        var symbols: [Symbol] = []

        do {
            let dict = try decoder.decode([String: [String]].self, from: data)
            for (key, categoryNames) in dict {
                let categories: [SymbolCategory] = categoryNames.compactMap { categoryName in
                    categoryDict[categoryName]
                }
                let symbol = Symbol(name: key, categories: categories)
                symbols.append(symbol)
            }
        } catch {
            fatalError("Can't decode data from symbol_categories.plist: \(error)")
        }
        return symbols
    }
}

/// Function to load and decode the plist into structures.
/// - Parameters:
///   - categorization: An instance conforming to the `Categorizing` protocol.
///   - symbolization: An instance conforming to the `Symbolizing` protocol.
/// - Returns: An array of `Symbol` objects.
public func convertSymbols(categorization: Categorizing, symbolization: Symbolizing) -> [Symbol] {
    let symbols = symbolization.symbolize(categorization: categorization)
    return symbols
}
