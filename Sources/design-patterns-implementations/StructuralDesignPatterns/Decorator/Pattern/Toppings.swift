//  Toppings.swift
//  Created by Rohit Patil on 10/08/23.
import Foundation

/// Implementation of decorator design pattern.
/// Base decorator inherited by all concrete decorators.
class BasePizzaIngredientDecorator: PizzaIngredient, CustomStringConvertible {
    var wrappedPizzaIngredient: PizzaIngredient
    
    var description: String {
        "Pizza base + \(wrappedPizzaIngredient.description)"
    }
    
    init(wrappedPizzaIngredient: PizzaIngredient) {
        self.wrappedPizzaIngredient = wrappedPizzaIngredient
    }
    
    func cost() -> Int {
        wrappedPizzaIngredient.cost()
    }
}

class PannerToppingDecorator: BasePizzaIngredientDecorator {
    override var description: String {
        "Paneer topping + \(wrappedPizzaIngredient.description)"
    }

    override func cost() -> Int {
        super.cost() + 40
    }
}

class MushroomToppingDecorator: BasePizzaIngredientDecorator {
    override var description: String {
        "Mushroom topping + \(wrappedPizzaIngredient.description)"
    }
    
    override func cost() -> Int {
        super.cost() + 30
    }
}

class CheeseBurstDecorator: BasePizzaIngredientDecorator {
    override var description: String {
        "Cheese burst + \(wrappedPizzaIngredient.description)"
    }
    
    override func cost() -> Int {
        super.cost() + 50
    }
}
