//  CPUComponents.swift
//  Created by Rohit Patil on 30/07/23.
import Foundation

protocol CPUComponent {
    var modelYear: String { get }
}

extension CPUComponent {
    var modelYear: String { "2023" }
}


enum CPU: CPUComponent {
    case intelDualCore
    case intelOctaCore
    //....
}

enum RAM: CPUComponent {
    case fourGB
    case eightGB
    //....
}


enum Storage: CPUComponent {
    case HDD
    case SSD
    //....
}


enum GraphicsCard: CPUComponent {
    case nvidiaGForce
    //....
}
