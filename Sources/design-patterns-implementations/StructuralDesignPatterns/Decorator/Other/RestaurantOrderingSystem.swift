//  RestaurantOrderingSystem.swift
//  Created by Rohit Patil on 10/08/23.
import Foundation

enum Pizza {
    case farmHouse
    case veggieParadise
}

enum Toppings {
    case panner
    case mushroom
    case cheeseBurst
}

/// Code that uses the "Decorator design pattern" to create required orders / pizza objects.
class RestaurantOrderingSystem {
    func order(pizza: Pizza, toppings: [Toppings]) -> PizzaIngredient {
        var finalPizza: PizzaIngredient
        
        switch pizza {
        case .farmHouse:
            finalPizza = FarmHousePizza()
        case .veggieParadise:
            finalPizza = VeggieParadisePizza()
        }
        
        for topping in toppings {
            switch topping {
            case .panner:
                finalPizza = PannerToppingDecorator(wrappedPizzaIngredient: finalPizza)
            case .mushroom:
                finalPizza = MushroomToppingDecorator(wrappedPizzaIngredient: finalPizza)
            case .cheeseBurst:
                finalPizza = CheeseBurstDecorator(wrappedPizzaIngredient: finalPizza)
            }
        }
        
        return finalPizza
    }
}
