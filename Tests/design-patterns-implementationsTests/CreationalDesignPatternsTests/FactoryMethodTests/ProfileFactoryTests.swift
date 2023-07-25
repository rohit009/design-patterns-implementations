//
//  ProfileFactoryTests.swift
//  
//
//  Created by Rohit Patil on 25/07/23.
//

import XCTest
@testable import design_patterns_implementations

final class ProfileFactoryTests: XCTestCase {
    var profileValidation: ProfileValidation!

    override func setUpWithError() throws {
        // The SUT, i.e., the caller code which uses profile factory.
        profileValidation = ProfileValidation()
    }

    func testFreeTierAttendeeFactoryUsage() {
        let info = profileValidation.showProfileInfo(
            addOn: "Alex",
            profileFactory: FreeTierAttendeeFactory()
        )
        
        XCTAssertEqual(info, "Free tier profile info: Alex")
    }
    
    func testPaidTierAttendeeFactoryUsage() {
        let info = profileValidation.showProfileInfo(
            addOn: "Alex",
            profileFactory: PaidTierAttendeeFactory()
        )
        
        XCTAssertEqual(info, "Paid tier profile info: Alex")
    }
    
    func testHostFactoryUsage() {
        let info = profileValidation.showProfileInfo(
            addOn: "Santos",
            profileFactory: HostFactory()
        )
        
        XCTAssertEqual(info, "Host profile info: Santos")
    }

}
