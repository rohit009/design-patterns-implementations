//  PaymentMethods.swift
//  Created by Rohit Patil on 17/08/23.
import Foundation

/// Strategy interface to be followed by different payment method strategies.
protocol PaymentMethod {
    func discountPercentage() -> Int
    func calculateCost(product: Product) -> Int
    func processPurchasePayment(product: Product, amount: Int) -> Bool
}

/// Concrete implementation of strategy.
class VisaCreditCard: PaymentMethod {
    func discountPercentage() -> Int {
        15
    }
    
    func calculateCost(product: Product) -> Int {
        product.originalCost * (100 - discountPercentage()) / 100
    }
    
    func processPurchasePayment(product: Product, amount: Int) -> Bool {
        print("VisaCreditCard: Processing purchase of \(product) for \(amount) Rs.")
        
        return true
    }
}

class PayPal: PaymentMethod {
    func discountPercentage() -> Int {
        5
    }
    
    func calculateCost(product: Product) -> Int {
        product.originalCost * (100 - discountPercentage()) / 100
    }
    
    func processPurchasePayment(product: Product, amount: Int) -> Bool {
        print("PayPal: Processing purchase of \(product) for \(amount) Rs.")
        
        return false
    }
}

class PayTM: PaymentMethod {
    func discountPercentage() -> Int {
        10
    }
    
    func calculateCost(product: Product) -> Int {
        product.originalCost * (100 - discountPercentage()) / 100
    }
    
    func processPurchasePayment(product: Product, amount: Int) -> Bool {
        print("PayTM: Processing purchase of \(product) for \(amount) Rs.")
        
        return true
    }
}
