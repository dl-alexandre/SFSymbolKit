//
//  Symbol.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

public struct Symbol: Codable, Hashable, Equatable {
    public static func == (lhs: Symbol, rhs: Symbol) -> Bool {
        return lhs.name == rhs.name && lhs.category == rhs.category
    }

    public let name: String
    public let category: [SymbolCategory]

    public init(name: String, category: [SymbolCategory]) {
        self.name = name
        self.category = category
    }

    enum CodingKeys: String, CodingKey {
        case name = "name"
        case category = "category"
    }

    // Decodable initializer
    public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decode(String.self, forKey: .name)
        category = try container.decode([SymbolCategory].self, forKey: .category)
    }

    // Encodable method
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(name, forKey: .name)
        try container.encode(category.description, forKey: .category)
    }
}
