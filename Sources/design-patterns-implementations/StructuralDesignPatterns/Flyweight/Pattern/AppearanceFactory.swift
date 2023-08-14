//  AppearanceFactory.swift
//  Created by Rohit Patil on 14/08/23.
import Foundation
import UIKit

/// Factory to generate and cache flyweight objects of `Appearance`.
class AppearanceFactory {
    private static var appearanceCache: [String: Appearance] = [:]

    static func appearance(for color: UIColor, font: UIFont) -> Appearance {
        let key = keyString(from: color, font: font)

        if let appearance = appearanceCache[key] {
            return appearance
        }
        
        let newAppearance = Appearance(color: color, font: font)
        appearanceCache[key] = newAppearance
        
        return newAppearance
    }
}

extension AppearanceFactory {
    static func keyString(from color: UIColor, font: UIFont) -> String {
        keyString(from: color) + keyString(from: font)
    }
    
    static func keyString(from color: UIColor) -> String {
        guard let components = color.cgColor.components, !components.isEmpty else {
            return "wildcardKey"
        }

        let red = components[0]
        var green: CGFloat = 0.0
        var blue: CGFloat = 0.0
        if components.count > 1 {
            green = components[1]
        }
        if components.count > 2 {
            blue = components[2]
        }
        
        return "\(red)_\(green)_\(blue)"
    }
    
    static func keyString(from font: UIFont) -> String {
        font.fontName
    }
}
