//  ArbitraryShape.swift
//  Created by Rohit Patil on 04/08/23.
import Foundation

class ArbitraryShape: Shape {
    
    var curves: [Int]
    var lines: [Int]
    
    init(originX: Float = 0.0, originY: Float = 0.0, curves: [Int], lines: [Int]) {
        self.curves = curves
        self.lines = lines
        
        super.init(originX: originX, originY: originY)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        // Array is already pass by value so its contents are copied and sent to the initializer.
        let copiedArbitraryShape = ArbitraryShape(curves: curves, lines: lines)
        
        guard let copiedShape = super.copy(with: zone) as? Shape else {
            return copiedArbitraryShape
        }
        
        copiedArbitraryShape.originX = copiedShape.originX
        copiedArbitraryShape.originY = copiedShape.originY
        
        return copiedArbitraryShape
    }
}
