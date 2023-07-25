//  ProfileValidation.swift
//  Created by Rohit Patil on 25/07/23.
import Foundation

// The caller code that uses Factory method design pattern implementation.
class ProfileValidation {
    
    func showProfileInfo(addOn info: String, profileFactory: ProfileFactory) -> String {
        return profileFactory.giveProfileInfo(addOn: info)
    }
}
