//  GamingComputerConfigurationBuilder.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

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
