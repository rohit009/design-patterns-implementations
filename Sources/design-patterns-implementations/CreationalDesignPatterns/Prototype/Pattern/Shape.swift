//  Shape.swift
//  Created by Rohit Patil on 03/08/23.
import Foundation

/// Base class - implementation of Prototype design pattern.
/// iOS has in-built support of this design pattern with `NSCopying` protocol and `copy(with:)`
/// method. The users of this class will have to call `copy()` method which will be mapped to
/// call `copy(with:)` method in this class.
class Shape: NSCopying {
    var originX: Float
    var originY: Float
    
    init(originX: Float = 0.0, originY: Float = 0.0) {
        self.originX = originX
        self.originY = originY
    }
    
    // MARK: NSCopying
    
    func copy(with zone: NSZone? = nil) -> Any {
        // The copy should be 10 points to the left.
        Shape(originX: originX - 10.0, originY: originY)
    }
}
