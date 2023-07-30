//  BuilderValidation.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

// This is the calling code that uses the builder pattern - `ComputerConfigurationBuilder`.
class BuilderValidation {
        
    func createWorkComputerConfiguration() -> ComputerConfiguration {
        // The calling code can use the builder directly or optionally use director as applicable.
        let builder = WorkComputerConfigurationBuilder()
        
        builder.addCPU()
        builder.addRAM()
        builder.addStorage()
        builder.addGraphicsCard()
        
        builder.addMonitor1()
        builder.addMonitor2()
        builder.addKeyboard()
        builder.addMouse()

        return builder.retrieveComputerConfiguration()
    }
    
    func createGamingComputerConfiguration() -> ComputerConfiguration {
        let builder = GamingComputerConfigurationBuilder()

        builder.addCPU()
        builder.addRAM()
        builder.addStorage()
        builder.addGraphicsCard()
        
        builder.addMonitor1()
        builder.addMonitor2()
        builder.addKeyboard()
        builder.addMouse()

        return builder.retrieveComputerConfiguration()
    }
    
    func createGamingComputerConfigurationWithDirector() -> ComputerConfiguration {
        // The calling code can use the builder directly or optionally use director as applicable.
        let builder = GamingComputerConfigurationBuilder()

        let director = ComputerConfigurationDirector()
        director.constructComputerConfiguration(builder: builder)

        return builder.retrieveComputerConfiguration()
    }
    
    // The actual business logic of code that uses builder pattern.
    func doWorkWithConfiguration() {
        let config = createWorkComputerConfiguration()
        print("Work computer configuration: \(config)")
    }
    
}
