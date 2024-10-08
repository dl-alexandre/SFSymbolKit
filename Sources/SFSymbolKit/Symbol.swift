//
//  convertSymbols.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import Foundation

public struct Symbol: Codable, Hashable, Equatable {
    public static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.name == rhs.name && lhs.categories == rhs.categories
    }

    public let name: String
    public let categories: [Category]

    public init(name: String, categories: [Category]) {
        self.name = name
        self.categories = categories
    }

    enum CodingKeys: String, CodingKey {
        case name
        case category
    }

    // Decodable initializer
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        categories = try container.decode([Category].self, forKey: .category)
    }

    // Encodable method
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(categories.description, forKey: .category)
    }
}

/// Class responsible for symbolizing categories by decoding a plist file.
public class Symbolizor: Symbolizing {
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
        let categoryDict: [String: Category] = convertCategories(categorization: categorization)

        var symbols: [Symbol] = []

        do {
            let dict = try decoder.decode([String: [String]].self, from: data)
            for (key, categoryNames) in dict {
                let categories: [Category] = categoryNames.compactMap { categoryName in
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
