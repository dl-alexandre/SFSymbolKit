//
//  File.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI

/// `SymbolCategory` represents different categories of symbols.
/// Each category includes a label, an icon, and count representing the category.
public enum SymbolCategory: Int, CaseIterable {
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

    /// The label for the symbol category.
    /// This property provides a descriptive label for each category.
    /// - Returns: A string representing the label of the category.
    public var label: String {
        switch self {
        case .all: 
            return "All"
        case .whatsnew:
            return "What's New"
        case .multicolor:
            return "Multicolor"
        case .variablecolor:
            return "Variable Color"
        case .communication:
            return "Communication"
        case .weather:
            return "Weather"
        case .maps:
            return "Maps"
        case .objectsandtools:
            return "Objects & Tools"
        case .devices:
            return "Devices"
        case .cameraandphotos:
            return "Camera & Photos"
        case .gaming:
            return "Gaming"
        case .connectivity:
            return "Connectivity"
        case .transportation:
            return "Transportation"
        case .automotive:
            return "Automotive"
        case .accessibility:
            return "Accessibility"
        case .privacyandsecurity:
            return "Privacy & Security"
        case .human:
            return "Human"
        case .home:
            return "Home"
        case .fitness:
            return "Fitness"
        case .nature:
            return "Nature"
        case .editing:
            return "Editing"
        case .textformatting:
            return "Text Formatting"
        case .media:
            return "Media"
        case .keyboard:
            return "Keyboard"
        case .commerce:
            return "Commerce"
        case .time:
            return "Time"
        case .health:
            return "Health"
        case .shapes:
            return "Shapes"
        case .arrows:
            return "Arrows"
        case .indeces:
            return "Indices"
        case .math:
            return "Math"
        case .custom:
            return "Custom"
        }
    }

    /// The icon for the symbol category.
    /// This property provides an icon image for each category.
    /// - Returns: An `Image` representing the icon of the category.
    public var icon: Image {
        switch self {
        case .all: return Image(systemName: "square.grid.2x2")
        case .whatsnew:
            return Image(systemName: "sparkles")
        case .multicolor:
            return Image(systemName: "paintpalette")
        case .variablecolor:
            return Image(systemName: "slider.horizontal.below.square.and.square.filled")
        case .communication:
            return Image(systemName: "message")
        case .weather:
            return Image(systemName: "cloud.sun")
        case .maps:
            return Image(systemName: "map")
        case .objectsandtools:
            return Image(systemName: "folder")
        case .devices:
            return Image(systemName: "desktopcomputer")
        case .cameraandphotos:
            return Image(systemName: "camera")
        case .gaming:
            return Image(systemName: "gamecontroller")
        case .connectivity:
            return Image(systemName: "antenna.radiowaves.left.and.right")
        case .transportation:
            return Image(systemName: "car.fill")
        case .automotive:
            return Image(systemName: "steeringwheel")
        case .accessibility:
            return Image(systemName: "accessibility")
        case .privacyandsecurity:
            return Image(systemName: "lock")
        case .human:
            return Image(systemName: "person.crop.circle")
        case .home:
            return Image(systemName: "house")
        case .fitness:
            return Image(systemName: "figure.run")
        case .nature:
            return Image(systemName: "leaf")
        case .editing:
            return Image(systemName: "slider.horizontal.3")
        case .textformatting:
            return Image(systemName: "textformat")
        case .media:
            return Image(systemName: "playpause")
        case .keyboard:
            return Image(systemName: "command")
        case .commerce:
            return Image(systemName: "cart")
        case .time:
            return Image(systemName: "timer")
        case .health:
            return Image(systemName: "heart")
        case .shapes:
            return Image(systemName: "square.on.circle")
        case .arrows:
            return Image(systemName: "arrow.forward")
        case .indeces:
            return Image(systemName: "a.circle")
        case .math:
            return Image(systemName: "x.squareroot")
        case .custom:
            return Image(systemName: "square.grid.2x2")
        }
    }

    /// The count for the symbol category
    ///  This property provides an Int for each category
    ///  - Returns: an `Int` representing the symbol count of the category
    var count: Int {
        switch self {
        case .all:
            return 6404
        case .whatsnew:
            return 1015
        case .multicolor:
            return 1956
        case .variablecolor:
            return 378
        case .communication:
            return 196
        case .weather:
            return 169
        case .maps:
            return 125
        case .objectsandtools:
            return 1305
        case .devices:
            return 504
        case .cameraandphotos:
            return 195
        case .gaming:
            return 229
        case .connectivity:
            return 88
        case .transportation:
            return 94
        case .automotive:
            return 738
        case .accessibility:
            return 114
        case .privacyandsecurity:
            return 144
        case .human:
            return 595
        case .home:
            return 443
        case .fitness:
            return 368
        case .nature:
            return 302
        case .editing:
            return 135
        case .textformatting:
            return 66
        case .media:
            return 96
        case .keyboard:
            return 73
        case .commerce:
            return 510
        case .time:
            return 41
        case .health:
            return 103
        case .shapes:
            return 53
        case .arrows:
            return 565
        case .indeces:
            return 582
        case .math:
            return 71
        case .custom:
            return 6
        }
    }
}
