//  DecoratorTests.swift
//  Created by Rohit Patil on 10/08/23.
import XCTest
@testable import design_patterns_implementations

/**
 * Tests to verify the restaurant ordering system that uses the decorator design pattern
 * to create a pizza order.
 *
 * Reference for calculating cost
 * - Farm house pizza -> 200
 * - Veggie paradise pizza -> 400
 * - Paneer topping -> 40
 * - Mushroom topping -> 30
 * - Cheese burst -> 50
 */
final class DecoratorTests: XCTestCase {
    var restaurantOrderingSystem: RestaurantOrderingSystem!
    
    override func setUpWithError() throws {
        restaurantOrderingSystem = RestaurantOrderingSystem()
    }

    func testOrderPizza1() {
        let pizza = restaurantOrderingSystem.order(
            pizza: .farmHouse,
            toppings: [.panner, .cheeseBurst]
        )
        
        XCTAssertEqual(pizza.cost(), 290)  // 200 + 40 + 50
        print("Description: \(pizza.description)")
    }
    
    func testOrderPizza2() {
        let pizza = restaurantOrderingSystem.order(
            pizza: .veggieParadise,
            toppings: [.mushroom, .cheeseBurst]
        )
        
        XCTAssertEqual(pizza.cost(), 480)  // 400 + 30 + 50
        print("Description: \(pizza.description)")
    }
    
    func testOrderPizza3() {
        let pizza = restaurantOrderingSystem.order(
            pizza: .farmHouse,
            toppings: [.mushroom]
        )
        
        XCTAssertEqual(pizza.cost(), 230)  // 200 + 30
        print("Description: \(pizza.description)")
    }
}
