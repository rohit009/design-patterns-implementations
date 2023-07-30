//  ComputerConfigurationDirector.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

// This is an optional componenet in Builder design pattern. It calls the builder's methods in
// specific order and helps to take out this code form the consumer of builder design pattern
// which in this case is `BuilderValidation`.
class ComputerConfigurationDirector {
    
    func constructComputerConfiguration(builder: ComputerConfigurationBuilder) {
        builder.reset()
        builder.addCPU()
        builder.addRAM()
        builder.addStorage()
        builder.addGraphicsCard()
        
        builder.addMonitor1()
        builder.addMonitor2()
        builder.addKeyboard()
        builder.addMouse()
    }
}
