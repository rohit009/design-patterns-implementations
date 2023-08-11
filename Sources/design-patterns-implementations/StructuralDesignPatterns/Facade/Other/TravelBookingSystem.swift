//  TravelBookingSystem.swift
//  Created by Rohit Patil on 11/08/23.
import Foundation

/// This is the app code that uses travel booking facade.
class TravelBookingSystem {
    var travelBookingFacade = TravelBookingFacade()
    
    // Show the UI to select specific travel and accommodation options....

    func bookTravelPackage(
        flights: [FlightDetails],
        hotels: [HotelDetails],
        carRentals: [RentalCarDetails]
    ) -> Bool {
        let result = travelBookingFacade.bookTravelPackage(
            flights: flights,
            hotels: hotels,
            carRentals: carRentals
        )
        
        // Do other work....
        
        return result
    }
}
