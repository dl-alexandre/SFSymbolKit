//
//  Orientation.swift
//  SFSymbolKit
//  https://github.com/dl-alexandre/SFSymbolKit
//  See LICENSE for license information.
//

import SwiftUI
/// `Orientation` is an enumeration that defines a list of SF Symbol Image Scales.
public enum Orientation: Int, CaseIterable {
    /// A value that indicates the original pixel data matches the image's
    /// intended display orientation.
    case `default`
    /// A value that indicates a 180° rotation of the image from the
    /// orientation of its original pixel data.
    case down
    /// A value that indicates a 90° counterclockwise rotation from the
    /// orientation of its original pixel data.
    case left
    /// A value that indicates a 90° clockwise rotation of the image from
    /// the orientation of its original pixel data.
    case right
    /// A value that indicates a horizontal flip of the image from the
    /// orientation of its original pixel data.
    case upMirrored
    /// A value that indicates a vertical flip of the image from the
    /// orientation of its original pixel data.
    case downMirrored
    /// A value that indicates a 90° clockwise rotation and horizontal
    /// flip of the image from the orientation of its original pixel
    /// data.
    case leftMirrored
    /// A value that indicates a 90° counterclockwise rotation and
    /// horizontal flip from the orientation of its original pixel data.
    case rightMirrored

    /// Provides a human-readable name for each Image Orientation.
    public var name: String {
        switch self {
        case .default: return "Up"
        case .down: return "Down"
        case .left: return "Left"
        case .right: return "Right"
        case .upMirrored: return "Small Mirrored"
        case .downMirrored: return "Medium Mirrored"
        case .leftMirrored: return "Large Mirrored"
        case .rightMirrored: return "Right Mirrored"
        }
    }
    /// Provides the corresponding `Orientation` for each Image Orientation.
    public var scale: Image.Orientation {
        switch self {
        case .default: return .up
        case .down: return .down
        case .left: return .left
        case .right: return .right
        case .upMirrored: return .upMirrored
        case .downMirrored: return .downMirrored
        case .leftMirrored: return .leftMirrored
        case .rightMirrored: return .rightMirrored
        }
    }
}
