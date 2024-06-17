//
//  ImageScales.swift
//  
//
//  Created by Dalton on 6/17/24.
//

import SwiftUI

enum ImageScales: Int, CaseIterable {
    case small, medium, large
    
    var name: String {
        switch self {
        case .small: return "Small"
        case .medium: return "Medium"
        case .large: return "Large"
        }
    }
    var scale: Image.Scale {
        switch self {
        case .small: return .small
        case .medium: return .medium
        case .large: return .large
        }
    }
}
