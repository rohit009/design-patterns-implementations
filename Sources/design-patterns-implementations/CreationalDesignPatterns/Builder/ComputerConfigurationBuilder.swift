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

class WorkComputerConfigurationBuilder: ComputerConfigurationBuilder {
    // Creating the product with defaults.
    private var computerConfiguration =
        WorkComputerConfigurationBuilder.createDefaultComputerConfigurationProduct()
    
    func addCPU() {
        // No action needed as it is already initialized with ".intelDualCore".
    }
    
    func addRAM() {
        // No action needed as it is already initialized with ".fourGB".
    }
    
    func addStorage() {
        // No action needed as it is already initialized with ".HDD".
    }
    
    func addGraphicsCard() {
        // No action needed as it is already initialized with no graphics card.
    }
    
    func addMonitor1() {
        computerConfiguration.peripherals.insert("Monitor-1")
    }
    
    func addMonitor2() {
        computerConfiguration.peripherals.insert("Monitor-2")
    }
    
    func addKeyboard() {
        computerConfiguration.peripherals.insert("Keyboard")
    }
    
    func addMouse() {
        computerConfiguration.peripherals.insert("Mouse")
    }
    
    func reset() {
        computerConfiguration =
            WorkComputerConfigurationBuilder.createDefaultComputerConfigurationProduct()
    }
    
    func retrieveComputerConfiguration() -> ComputerConfiguration {
        let computerConfiguration = self.computerConfiguration
        reset()

        return computerConfiguration
    }
}
   
class GamingComputerConfigurationBuilder: ComputerConfigurationBuilder {
    // Creating the product with defaults.
    private var computerConfiguration =
        GamingComputerConfigurationBuilder.createDefaultComputerConfigurationProduct()
    
    func addCPU() {
        computerConfiguration.CPUchip = .intelOctaCore
    }
    
    func addRAM() {
        computerConfiguration.RAMchip = .eightGB
    }
    
    func addStorage() {
        computerConfiguration.storage = .SSD
    }
    
    func addGraphicsCard() {
        computerConfiguration.graphicsCard = .nvidiaGForce
    }
    
    func addMonitor1() {
        computerConfiguration.peripherals.insert("Gaming-Monitor-1")
    }
    
    func addMonitor2() {
        computerConfiguration.peripherals.insert("Gaming-Monitor-2")
    }
    
    func addKeyboard() {
        computerConfiguration.peripherals.insert("Gaming-Keyboard")
    }
    
    func addMouse() {
        computerConfiguration.peripherals.insert("Gaming-Mouse")
    }
    
    func reset() {
        computerConfiguration =
            GamingComputerConfigurationBuilder.createDefaultComputerConfigurationProduct()
    }
    
    func retrieveComputerConfiguration() -> ComputerConfiguration {
        let computerConfiguration = self.computerConfiguration
        
        // The `-reset` call can also be at the call side. It depends on the implementation.
        reset()

        return computerConfiguration
    }
}
