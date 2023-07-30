//  BuilderTests.swift
//  Created by Rohit Patil on 30/07/23.
import XCTest
@testable import design_patterns_implementations

final class BuilderTests_swift: XCTestCase {

    func testWorkComputerConfigurationBuilder() {
        let builderValidation = BuilderValidation()
        let workConfiguration = builderValidation.createWorkComputerConfiguration()
        
        XCTAssertEqual(workConfiguration.CPUchip, .intelDualCore)
        XCTAssertEqual(workConfiguration.RAMchip, .fourGB)
        XCTAssertNil(workConfiguration.graphicsCard)
        XCTAssertEqual(workConfiguration.storage, .HDD)
        
        XCTAssertEqual(workConfiguration.peripherals.count, 4)
        XCTAssertTrue(workConfiguration.peripherals.contains("Monitor-1"))
        XCTAssertTrue(workConfiguration.peripherals.contains("Monitor-2"))
        XCTAssertTrue(workConfiguration.peripherals.contains("Keyboard"))
        XCTAssertTrue(workConfiguration.peripherals.contains("Mouse"))
    }
    
    func testGamingComputerConfigurationBuilder() {
        let builderValidation = BuilderValidation()
        let configuration = builderValidation.createGamingComputerConfiguration()
        
        validateGamingComputerConfiguration(configuration)
    }
    
    func testGamingComputerConfigurationBuilderWithDirector() {
        let builderValidation = BuilderValidation()
        let configuration = builderValidation.createGamingComputerConfigurationWithDirector()
        
        print("Configuration: \(configuration)")

        validateGamingComputerConfiguration(configuration)
    }
    
    private func validateGamingComputerConfiguration(_ configuration: ComputerConfiguration) {
        XCTAssertEqual(configuration.CPUchip, .intelOctaCore)
        XCTAssertEqual(configuration.RAMchip, .eightGB)
        XCTAssertEqual(configuration.graphicsCard, .nvidiaGForce)
        XCTAssertEqual(configuration.storage, .SSD)
        
        XCTAssertEqual(configuration.peripherals.count, 4)
        XCTAssertTrue(configuration.peripherals.contains("Gaming-Monitor-1"))
        XCTAssertTrue(configuration.peripherals.contains("Gaming-Monitor-2"))
        XCTAssertTrue(configuration.peripherals.contains("Gaming-Keyboard"))
        XCTAssertTrue(configuration.peripherals.contains("Gaming-Mouse"))
    }

}
