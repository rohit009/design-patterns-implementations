//  TextFormattingSystem.swift
//  Created by Rohit Patil on 14/08/23.
import Foundation
import UIKit

/// The app code that uses the extrinsic and intrinsic state from Flyweight design pattern.
class TextFormattingSystem {
    private var visualTextSegments = [TextSegment]()

    var visualTextSegmentsCreated: Int {
        visualTextSegments.count
    }
    
    func addTextAndRender(_ text: String, style: [TextStyle], color: UIColor, font: UIFont) {
        let textSegment = TextSegment(text: text, style: style, color: color, font: font)
        visualTextSegments.append(textSegment)
        
        textSegment.render()
    }
}
