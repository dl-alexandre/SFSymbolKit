//
//  CategoryTokens.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `CategoryTokens` represents different categories of symbols.
/// Each category includes a label, an icon, and count representing the category.
public enum CategoryTokens: String, CaseIterable, Decodable {
    case all
    case whatsnew
    case multicolor
    case variablecolor
    case communication
    case weather
    case maps
    case objectsandtools
    case devices
    case cameraandphotos
    case gaming
    case connectivity
    case transportation
    case automotive
    case accessibility
    case privacyandsecurity
    case human
    case home
    case fitness
    case nature
    case editing
    case textformatting
    case media
    case keyboard
    case commerce
    case time
    case health
    case shapes
    case arrows
    case indeces
    case math
    case custom

    /// Generates an `Image` from the given `CategoryTokens`.
    /// - Parameter category: The `CategoryTokens` to generate the image for.
    /// - Returns: An `Image` representing the icon of the specified category.
    public static func icon(from token: CategoryTokens) -> Image {
        return Image(systemName: token.icon)
    }

    /// The unique identifier for each category.
    public var key: String { self.rawValue }

    /// The label for the symbol category.
    /// This property provides a descriptive label for each category.
    /// - Returns: A string representing the label of the category.
    public var label: String {
        switch self {
        case .all: return "All"
        case .whatsnew: return "What's New"
        case .multicolor: return "Multicolor"
        case .variablecolor: return "Variable Color"
        case .communication: return "Communication"
        case .weather: return "Weather"
        case .maps: return "Maps"
        case .objectsandtools: return "Objects & Tools"
        case .devices: return "Devices"
        case .cameraandphotos: return "Camera & Photos"
        case .gaming: return "Gaming"
        case .connectivity: return "Connectivity"
        case .transportation: return "Transportation"
        case .automotive: return "Automotive"
        case .accessibility: return "Accessibility"
        case .privacyandsecurity: return "Privacy & Security"
        case .human: return "Human"
        case .home: return "Home"
        case .fitness: return "Fitness"
        case .nature: return "Nature"
        case .editing: return "Editing"
        case .textformatting: return "Text Formatting"
        case .media: return "Media"
        case .keyboard: return "Keyboard"
        case .commerce: return "Commerce"
        case .time: return "Time"
        case .health: return "Health"
        case .shapes: return "Shapes"
        case .arrows: return "Arrows"
        case .indeces: return "Indices"
        case .math: return "Math"
        case .custom: return "Custom"
        }
    }

    /// The icon name for the symbol category.
    /// This property provides the icon name for each category.
    /// - Returns: A `String` representing the icon name of the category.
    public var icon: String {
        switch self {
        case .all: return "square.grid.2x2"
        case .whatsnew: return "sparkles"
        case .multicolor: return "paintpalette"
        case .variablecolor: return "slider.horizontal.below.square.and.square.filled"
        case .communication: return "message"
        case .weather: return "cloud.sun"
        case .maps: return "map"
        case .objectsandtools: return "folder"
        case .devices: return "desktopcomputer"
        case .cameraandphotos: return "camera"
        case .gaming: return "gamecontroller"
        case .connectivity: return "antenna.radiowaves.left.and.right"
        case .transportation: return "car.fill"
        case .automotive: return "steeringwheel"
        case .accessibility: return "accessibility"
        case .privacyandsecurity: return "lock"
        case .human: return "person.crop.circle"
        case .home: return "house"
        case .fitness: return "figure.run"
        case .nature: return "leaf"
        case .editing: return "slider.horizontal.3"
        case .textformatting: return "textformat"
        case .media: return "playpause"
        case .keyboard: return "command"
        case .commerce: return "cart"
        case .time: return "timer"
        case .health: return "heart"
        case .shapes: return "square.on.circle"
        case .arrows: return "arrow.forward"
        case .indeces: return "a.circle"
        case .math: return "x.squareroot"
        case .custom: return "square.grid.2x2"
        }
    }

    /// The count for the symbol category
    ///  This property provides an Int for each category
    ///  - Returns: an `Int` representing the symbol count of the category
    var count: Int {
        switch self {
        case .all: return 6404
        case .whatsnew: return 1015
        case .multicolor: return 1956
        case .variablecolor: return 378
        case .communication: return 196
        case .weather: return 169
        case .maps: return 125
        case .objectsandtools: return 1305
        case .devices: return 504
        case .cameraandphotos: return 195
        case .gaming: return 229
        case .connectivity: return 88
        case .transportation: return 94
        case .automotive: return 738
        case .accessibility: return 114
        case .privacyandsecurity: return 144
        case .human: return 595
        case .home: return 443
        case .fitness: return 368
        case .nature: return 302
        case .editing: return 135
        case .textformatting: return 66
        case .media: return 96
        case .keyboard: return 73
        case .commerce: return 510
        case .time: return 41
        case .health: return 103
        case .shapes: return 53
        case .arrows: return 565
        case .indeces: return 582
        case .math: return 71
        case .custom: return 6
        }
    }

    /// Creates a dictionary mapping each `CategoryTokens` case to its corresponding label.
    /// - Returns: A dictionary where the keys are `CategoryTokens` and the values are their corresponding labels.
    public static func tokenDictionary() -> [CategoryTokens: String] {
        Dictionary(uniqueKeysWithValues: CategoryTokens.allCases.map { ($0, $0.label) })
    }
}
