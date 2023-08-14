//  FlyweightTests.swift
//  Created by Rohit Patil on 14/08/23.
import XCTest
@testable import design_patterns_implementations

final class FlyweightTests: XCTestCase {

    func testNoOfFlyweightObjectsCreated() {
        let textFormattingSystem = TextFormattingSystem()
        
        for count in 1 ... 500 {
            textFormattingSystem.addTextAndRender(
                "Some text - \(count)",
                style: [.italic, .bold],
                color: .gray,
                font: .boldSystemFont(ofSize: 12)
            )
        }
        
        for count in 1 ... 500 {
            textFormattingSystem.addTextAndRender(
                "Other text - \(count)",
                style: [.bold],
                color: .gray,
                font: .boldSystemFont(ofSize: 12)
            )
        }
        
        for count in 1 ... 500 {
            textFormattingSystem.addTextAndRender(
                "Aloha mora - \(count)",
                style: [.bold],
                color: .blue,
                font: .boldSystemFont(ofSize: 14)
            )
        }
        
        
        // Verify: Large no. of visual objects are created but only a few flyweight objects are
        // created as the repeated flyweight objects are not recreated and reused from factory
        // cache.
        XCTAssertEqual(textFormattingSystem.visualTextSegmentsCreated, 1500)
        XCTAssertEqual(Appearance.initializationCount, 2)
    }

}
