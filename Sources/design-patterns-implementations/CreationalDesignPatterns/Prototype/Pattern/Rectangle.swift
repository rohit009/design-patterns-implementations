//  Rectangle.swift
//  Created by Rohit Patil on 04/08/23.
import Foundation

class Rectangle: Shape {
    var length: Int
    var breadth: Int
    var diagonalX: Float
    var diagonalY: Float
    
    init(originX: Float = 0.0,
         originY: Float = 0.0,
         length: Int,
         breadth: Int,
         diagonalX: Float,
         diagonalY: Float
    ) {
        self.length = length
        self.breadth = breadth
        self.diagonalX = diagonalX
        self.diagonalY = diagonalY
        
        super.init(originX: originX, originY: originY)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let copiedRectangle = Rectangle(
            length: length,
            breadth: breadth,
            diagonalX: diagonalX,
            diagonalY: diagonalY
        )
        
        // Super class will return its own copy and not of the child class.
        // Use the fields for creating subclass's copy.
        // It would be a good practice to use the parent class's `copy()` implementation
        // as that would use the parent class business logic related to creating prototype
        // duplicates.
        guard let copiedShape = super.copy(with: zone) as? Shape else {
            return copiedRectangle
        }
         
        copiedRectangle.originX = copiedShape.originX
        copiedRectangle.originY = copiedShape.originY
        return copiedRectangle
    }
    
    // Can add an additional method like this to avoid type casting at call side. iOS -copy method
    // returns `any` so without this typecasting at call side is needed.
    func prototypeDuplicate() -> Rectangle {
        self.copy() as! Rectangle
    }
}
