//  TravelBookingLibrary.swift
//  Created by Rohit Patil on 11/08/23.
import Foundation

/// This represents the library which has several objects that the client will need to handle
/// and interact with in order to do the bookings.
class BaseBookingService {
    var token: String
    
    init(token: String) {
        self.token = token
    }
}

class FlightBookingService: BaseBookingService {
    func bookFlight(
        dateAndTime: Date,
        from departureAirport: String,
        to arrivalAirport: String
    ) -> Bool {
        guard departureAirport != TravelBookingConstants.kFaultyAirpot
                && arrivalAirport != TravelBookingConstants.kFaultyAirpot else {
            // Simulating service will return failure in booking for some airports.
            return false
        }
        
        // Real booking work....
        return true
    }
}

class HotelBookingService: BaseBookingService {
    func bookHotel(
        name: String,
        location: String,
        dates: DateInterval
    ) -> Bool {
        // Real booking work....
        return true
    }
}

class RentalCarBookingService: BaseBookingService {
    func bookHotel(
        name: String,
        pickupLocation: String,
        dates: DateInterval
    ) -> Bool {
        // Real booking work....
        return true
    }
}
