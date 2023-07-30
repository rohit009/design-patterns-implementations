//  ComputerConfigurationBuilder.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

// Builder design pattern implementation.
protocol ComputerConfigurationBuilder {
    
    func addCPU()
    
    func addRAM()
    
    func addStorage()
    
    func addGraphicsCard()
    
    // Can have multiple monitors.
    func addMonitor1()
    func addMonitor2()
    
    func addKeyboard()
    
    func addMouse()
    
    func reset()
    
    // This method may or may not be present in the builder interface based on
    // whether the product's different representations can be represented in an
    // interface.
    func retrieveComputerConfiguration() -> ComputerConfiguration
}

extension ComputerConfigurationBuilder {
    static func createDefaultComputerConfigurationProduct() -> ComputerConfigurationImpl  {
        ComputerConfigurationImpl(
            CPUchip: .intelDualCore,
            RAMchip: .fourGB,
            storage: .HDD
        )
    }
}
