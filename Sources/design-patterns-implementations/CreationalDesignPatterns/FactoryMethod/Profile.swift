//  Profile.swift
//  Created by Rohit Patil on 25/07/23.
import Foundation

// Product of the factory method design pattern.
protocol Profile {
    var id: String { get }

    func profileInfo(addOn info: String) -> String
}

class FreeTierAttendeeProfile: Profile {
    var id: String = "FreeTier_101"
    
    func profileInfo(addOn info: String) -> String {
        return "Free tier profile info: " + info
    }
    
}

class PaidTierAttendeeProfile: Profile {
    var id: String = "PaidTier_102"
    
    func profileInfo(addOn info: String) -> String {
        return "Paid tier profile info: " + info
    }
    
}

class HostProfile: Profile {
    var id: String = "Host_103"
    
    func profileInfo(addOn info: String) -> String {
        return "Host profile info: " + info
    }
    
}
