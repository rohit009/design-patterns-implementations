//  UserSubscriptionServiceTests.swift
//  Created by Rohit Patil on 21/07/23.
import XCTest
@testable import design_patterns_implementations

final class UserSubscriptionServiceTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testSingletonInstanceReferenceEquality() throws {
        let service1 = UserSubscriptionServiceImpl.shared
        let service2 = UserSubscriptionServiceImpl.shared
        
        XCTAssertTrue(service1 === service2)
    }

}
