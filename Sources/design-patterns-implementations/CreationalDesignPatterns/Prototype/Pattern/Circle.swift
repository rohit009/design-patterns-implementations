//  Circle.swift
//  Created by Rohit Patil on 04/08/23.
import Foundation

class Circle: Shape {
    var radius: Int
    var centerX: Float
    var centerY: Float

    init(originX: Float = 0.0,
         originY: Float = 0.0,
         radius: Int,
         centerX: Float,
         centerY: Float) {
        self.radius = radius
        self.centerX = centerX
        self.centerY = centerY

        super.init(originX: originX, originY: originY)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copiedCircle = Circle(radius: radius, centerX: centerX, centerY: centerY)
        
        guard let copiedShape = super.copy(with: zone) as? Shape else {
            return copiedCircle
        }
        
        copiedCircle.originX = copiedShape.originX
        copiedCircle.originY = copiedShape.originY
                
        return copiedCircle
    }
}
