//  ComputerConfiguration.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

// The product which will be created by builder design pattern implementation.
protocol ComputerConfiguration {
    var CPUchip: CPU { get }
    var RAMchip: RAM { get }
    var storage: Storage { get }
    var graphicsCard: GraphicsCard? { get }
    var peripherals: Set<String> { get }
}

class ComputerConfigurationImpl: ComputerConfiguration, CustomStringConvertible {
    var description: String {
        """
        Computer Configuration:
        CPU: \(CPUchip)
        RAM: \(RAMchip)
        Storage: \(storage)
        Graphics Card: \(String(describing: graphicsCard))
        Peripherals: \(peripherals)
        """
    }
    
    var CPUchip: CPU
    var RAMchip: RAM
    var storage: Storage
    var graphicsCard: GraphicsCard?
    var peripherals: Set<String> = Set<String>()
    
    init(
        CPUchip: CPU,
        RAMchip: RAM,
        storage: Storage,
        graphicsCard: GraphicsCard? = nil
    ) {
        self.CPUchip = CPUchip
        self.RAMchip = RAMchip
        self.storage = storage
        self.graphicsCard = graphicsCard
    }
}
