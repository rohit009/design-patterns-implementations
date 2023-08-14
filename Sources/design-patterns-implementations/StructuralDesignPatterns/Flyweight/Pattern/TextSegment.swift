//  TextSegment.swift
//  Created by Rohit Patil on 14/08/23.
import Foundation
import UIKit

/// Extrinsic state of Flyweight design pattern. `text`, `style` keep on changing for different
/// objects and `appearance` is the intrinsic state which does not change more often and repeats
/// in between several objects.
struct TextSegment {
    var text: String
    var style: [TextStyle]
    var appearance: Appearance
    
    init(text: String, style: [TextStyle], color: UIColor, font: UIFont) {
        self.text = text
        self.style = style
        self.appearance = AppearanceFactory.appearance(for: color, font: font)
    }
    
    func render() {
        appearance.render(text: text, style: style)
    }
}
