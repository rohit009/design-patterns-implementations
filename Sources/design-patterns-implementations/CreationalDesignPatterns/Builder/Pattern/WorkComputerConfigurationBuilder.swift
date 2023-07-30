//  WorkComputerConfigurationBuilder.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

class WorkComputerConfigurationBuilder: ComputerConfigurationBuilder {
    // Creating the product with defaults.
    private var computerConfiguration =
        WorkComputerConfigurationBuilder.createDefaultComputerConfigurationProduct()
    
    func addCPU() {
        computerConfiguration.CPUchip = .intelDualCore
    }
    
    func addRAM() {
        computerConfiguration.RAMchip = .fourGB
    }
    
    func addStorage() {
        computerConfiguration.storage = .HDD
    }
    
    func addGraphicsCard() {
        // No action.
        // No need to graphics card in work computer.
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
