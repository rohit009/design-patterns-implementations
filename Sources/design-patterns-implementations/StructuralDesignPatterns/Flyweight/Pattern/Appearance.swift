//  Appearance.swift
//  Created by Rohit Patil on 14/08/23.
import Foundation
import UIKit

/// Flyweight design pattern implementation. This is the intrinsic state that is repeated in
/// between several objects.
struct Appearance: Equatable {
    // A property to verify no. of objects created.
    static var initializationCount = 0
    
    var color: UIColor
    var font: UIFont

    init(color: UIColor, font: UIFont) {
        self.color = color
        self.font = font
        Appearance.initializationCount += 1
    }
    
    init() {
        self.color = .white
        self.font = .systemFont(ofSize: 10)
        Appearance.initializationCount += 1
    }
    
    func render(text: String, style: [TextStyle]) {
        print("Rendering text: \(text), style: \(style), color: \(color), font: \(font)")
    }
}
