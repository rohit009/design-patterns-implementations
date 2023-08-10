//  Pizzas.swift
//  Created by Rohit Patil on 10/08/23.
import Foundation

/// The "component" protocol of decorator pattern.
protocol PizzaIngredient: CustomStringConvertible {
    func cost() -> Int
}


class FarmHousePizza: PizzaIngredient {
    var description: String {
        "Farm house pizza"
    }
    
    func cost() -> Int {
        200
    }
}

class VeggieParadisePizza: PizzaIngredient {
    var description: String {
        "Veggie paradise pizza"
    }
    
    func cost() -> Int {
        400
    }
}
