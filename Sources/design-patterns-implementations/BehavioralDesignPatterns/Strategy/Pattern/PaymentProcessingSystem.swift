//  PaymentProcessingSystem.swift
//  Created by Rohit Patil on 17/08/23.
import Foundation

struct Product: CustomStringConvertible {
    var description: String {
        name
    }
    
    let name: String
    let originalCost: Int
}

/// The "Context" part from Strategy design pattern. A strategy is passed / updated to this and
/// according to that it handles its own working.
class PaymentProcessingSystem {
    
    /// Current strategy to use.
    private var paymentMethod: PaymentMethod
    
    init(paymentMethod: PaymentMethod) {
        self.paymentMethod = paymentMethod
    }
    
    func updatePaymentMethod(_ paymentMethod: PaymentMethod) {
        self.paymentMethod = paymentMethod
    }
    
    func discountAmount(on product: Product) -> Int {
        product.originalCost * paymentMethod.discountPercentage() / 100
    }
    
    func calculateCost(product: Product) -> Int {
        paymentMethod.calculateCost(product: product)
    }
    
    func processPurchase(product: Product) -> Bool {
        paymentMethod.processPurchasePayment(
            product: product,
            amount: calculateCost(product: product)
        )
    }
}
