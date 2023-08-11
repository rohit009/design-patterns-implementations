//  TravelBookingDetails.swift
//  Created by Rohit Patil on 11/08/23.
import Foundation

struct FlightDetails {
    var dateAndTime: Date
    var departureAirport: String
    var arrivalAirport: String
}

struct HotelDetails {
    var name: String
    var location: String
    var dates: DateInterval
}

struct RentalCarDetails {
    var name: String
    var pickupLocation: String
    var dates: DateInterval
}
