//  PrototypeTests.swift
//  Created by Rohit Patil on 04/08/23.
import XCTest
@testable import design_patterns_implementations

final class PrototypeTests: XCTestCase {

    func testShapePrototype() {
        let shape1 = Shape(originX: 1.0, originY: 2.0)
        
        guard let copiedShape = shape1.copy() as? Shape else {
            XCTFail()
            return
        }
         
        XCTAssertEqual(copiedShape.originX, -9.0)
        XCTAssertEqual(copiedShape.originY, 2.0)
    }
    
    func testRectanglePrototype() {
        let rectangle1 = Rectangle(
            originX: 20,
            originY: 20,
            length: 50,
            breadth: 40,
            diagonalX: 70,
            diagonalY: 60
        )
        
        guard let copiedRectangle = rectangle1.copy() as? Rectangle else {
            XCTFail()
            return
        }
         
        XCTAssertEqual(copiedRectangle.originX, 10)
        XCTAssertEqual(copiedRectangle.originY, 20)
        XCTAssertEqual(copiedRectangle.length, 50)
        XCTAssertEqual(copiedRectangle.breadth, 40)
        XCTAssertEqual(copiedRectangle.diagonalX, 70)
        XCTAssertEqual(copiedRectangle.diagonalY, 60)
    }
    
    func testRectanglePrototypeDuplicate() {
        let rectangle1 = Rectangle(
            originX: 20,
            originY: 20,
            length: 50,
            breadth: 40,
            diagonalX: 70,
            diagonalY: 60
        )
        
        let copiedRectangle = rectangle1.prototypeDuplicate()
         
        XCTAssertEqual(copiedRectangle.originX, 10)
        XCTAssertEqual(copiedRectangle.originY, 20)
        XCTAssertEqual(copiedRectangle.length, 50)
        XCTAssertEqual(copiedRectangle.breadth, 40)
        XCTAssertEqual(copiedRectangle.diagonalX, 70)
        XCTAssertEqual(copiedRectangle.diagonalY, 60)
    }
    
    func testCirclePrototype() {
        let circle1 = Circle(originX: 10, originY: 20, radius: 30, centerX: 20, centerY: 50)
        
        guard let copiedCircle = circle1.copy() as? Circle else {
            XCTFail()
            return
        }
        
        XCTAssertEqual(copiedCircle.originX, 0)
        XCTAssertEqual(copiedCircle.originY, 20)
        XCTAssertEqual(copiedCircle.radius, 30)
        XCTAssertEqual(copiedCircle.centerX, 20)
        XCTAssertEqual(copiedCircle.centerY, 50)
    }
    
    func testArbitraryShapePrototype() {
        let arbitraryShape1 = ArbitraryShape(
            originX: 10,
            originY: 20,
            curves: [1, 3, 6],
            lines: [20, 12, 32]
        )
        
        guard let copiedArbitraryShape = arbitraryShape1.copy() as? ArbitraryShape else {
            XCTFail()
            return
        }
        
        XCTAssertEqual(copiedArbitraryShape.originX, 0)
        XCTAssertEqual(copiedArbitraryShape.originY, 20)
        XCTAssertEqual(copiedArbitraryShape.curves, [1, 3, 6])
        XCTAssertEqual(copiedArbitraryShape.lines, [20, 12, 32])
    }
}
