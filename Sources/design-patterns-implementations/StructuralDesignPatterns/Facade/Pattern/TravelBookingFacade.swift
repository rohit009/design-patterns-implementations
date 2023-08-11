//  TravelBookingFacade.swift
//  Created by Rohit Patil on 11/08/23.
import Foundation

/// Implementation of Facade design pattern that provides a simplified interface to book travel
/// package.
class TravelBookingFacade {
    var flightBookingService: FlightBookingService
    var hotelBookingService: HotelBookingService
    var rentalCarBookingService: RentalCarBookingService
    
    init() {
        self.flightBookingService = FlightBookingService(token: UUID().uuidString)
        self.hotelBookingService = HotelBookingService(token: UUID().uuidString)
        self.rentalCarBookingService = RentalCarBookingService(token: UUID().uuidString)
    }

    // Additional init having dependency injection for testing purpose.
    init(
        flightBookingService: FlightBookingService,
        hotelBookingService: HotelBookingService,
        rentalCarBookingService: RentalCarBookingService
    ) {
        self.flightBookingService = flightBookingService
        self.hotelBookingService = hotelBookingService
        self.rentalCarBookingService = rentalCarBookingService
    }
    
    func bookTravelPackage(
        flights: [FlightDetails],
        hotels: [HotelDetails],
        carRentals: [RentalCarDetails]
    ) -> Bool {
        var flightBookingResult = false
        var hotelBookingResult = false
        var carRentalBookingResult = false
        
        for flight in flights {
            flightBookingResult = flightBookingResult && flightBookingService.bookFlight(
                dateAndTime: flight.dateAndTime,
                from: flight.departureAirport,
                to: flight.arrivalAirport
            )
        }
        
        for hotel in hotels {
            hotelBookingResult = hotelBookingResult && hotelBookingService.bookHotel(
                name: hotel.name,
                location: hotel.location,
                dates: hotel.dates
            )
        }
        
        for carRental in carRentals {
            carRentalBookingResult = carRentalBookingResult && rentalCarBookingService.bookHotel(
                name: carRental.name,
                pickupLocation: carRental.pickupLocation,
                dates: carRental.dates
            )
        }
        
        return flightBookingResult && hotelBookingResult && carRentalBookingResult
    }
}
