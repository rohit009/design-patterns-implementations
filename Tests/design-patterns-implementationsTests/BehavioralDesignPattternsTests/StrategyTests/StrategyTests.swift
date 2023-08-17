//  StrategyTests.swift
//  Created by Rohit Patil on 17/08/23.
import XCTest
@testable import design_patterns_implementations

/// These tests represent the app code that uses the Strategy design pattern to process payments.
final class StrategyTests: XCTestCase {

    var fridgeProduct: Product!
    var paymentProcessingSystem: PaymentProcessingSystem!

    override func setUpWithError() throws {
        fridgeProduct = Product(name: "Fridge", originalCost: 2000)
        // Creating "Context" object with initial strategy.
        paymentProcessingSystem = PaymentProcessingSystem(paymentMethod: VisaCreditCard())
    }

    func testVisaCreditCardPaymentStrategy() {
        let discountAmount = paymentProcessingSystem.discountAmount(on: fridgeProduct)
        XCTAssertEqual(discountAmount, 300)
        
        let cost = paymentProcessingSystem.calculateCost(product: fridgeProduct)
        XCTAssertEqual(cost, 1700)
        
        let result = paymentProcessingSystem.processPurchase(product: fridgeProduct)
        XCTAssertTrue(result)
    }
    
    func testPayPalPaymentStrategy() {
        paymentProcessingSystem.updatePaymentMethod(PayPal())

        let discountAmount = paymentProcessingSystem.discountAmount(on: fridgeProduct)
        XCTAssertEqual(discountAmount, 100)
        
        let cost = paymentProcessingSystem.calculateCost(product: fridgeProduct)
        XCTAssertEqual(cost, 1900)
        
        let result = paymentProcessingSystem.processPurchase(product: fridgeProduct)
        XCTAssertFalse(result)
    }

    func testPayTMPaymentStrategy() {
        paymentProcessingSystem.updatePaymentMethod(PayTM())

        let discountAmount = paymentProcessingSystem.discountAmount(on: fridgeProduct)
        XCTAssertEqual(discountAmount, 200)
        
        let cost = paymentProcessingSystem.calculateCost(product: fridgeProduct)
        XCTAssertEqual(cost, 1800)
        
        let result = paymentProcessingSystem.processPurchase(product: fridgeProduct)
        XCTAssertTrue(result)
    }
}
