//  ProfileFactory.swift
//  Created by Rohit Patil on 25/07/23.
import Foundation

/**
 * Implementation of the "Factory method" design pattern.
 * Reference: [Dive Into Design patterns book by Alexander Shvets](https://refactoring.guru/design-patterns/book)
 *
 * This is the factory's base interface from the pattern.
 */
protocol ProfileFactory {
    func createProfile() -> Profile
    
    func giveProfileInfo(addOn info: String) -> String
}

extension ProfileFactory {

    // Real business logic of the factory entity.
    func giveProfileInfo(addOn info: String) -> String {
        let profile = createProfile()

        return profile.profileInfo(addOn: info)
    }

}


class FreeTierAttendeeFactory: ProfileFactory {
    func createProfile() -> Profile {
        return FreeTierAttendeeProfile()
    }
}

class PaidTierAttendeeFactory: ProfileFactory {
    func createProfile() -> Profile {
        return PaidTierAttendeeProfile()
    }
}

class HostFactory: ProfileFactory {
    func createProfile() -> Profile {
        return HostProfile()
    }
}
