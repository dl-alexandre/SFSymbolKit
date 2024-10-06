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

    let name: String
    let category: [Category]
}
