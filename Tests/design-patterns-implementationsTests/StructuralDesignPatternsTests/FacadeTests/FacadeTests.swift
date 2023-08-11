//  FacadeTests.swift
//  Created by Rohit Patil on 11/08/23.
import XCTest
@testable import design_patterns_implementations

final class FacadeTests: XCTestCase {
    var travelBookingSystem: TravelBookingSystem!
    
    override func setUpWithError() throws {
        travelBookingSystem = TravelBookingSystem()
    }
    
    func testNormalBooking() {
        let flightDetails = FlightDetails(
            dateAndTime: Date.now + 360,
            departureAirport: "BLR",
            arrivalAirport: "BOM"
        )
        
        let rentalCarDetails = RentalCarDetails(
            name: "Nissan",
            pickupLocation: "San jose",
            dates: DateInterval(start: Date.now, end: Date.now + 360)
        )
        
        let hotelBookingDetails = HotelDetails(
            name: "Alexander",
            location: "Servia",
            dates: DateInterval(start: Date.now + 600, end: Date.now + 3480)
        )
        
        let bookingResult = travelBookingSystem.bookTravelPackage(
            flights: [flightDetails],
            hotels: [hotelBookingDetails],
            carRentals: [rentalCarDetails]
        )
        
        XCTAssertTrue(bookingResult)
    }
    
    func testFaultyBooking() {
        let flightDetails = FlightDetails(
            dateAndTime: Date.now + 360,
            departureAirport: TravelBookingConstants.kFaultyAirpot,
            arrivalAirport: "BOM"
        )

        let hotelBookingDetails = HotelDetails(
            name: "Alexander",
            location: "Servia",
            dates: DateInterval(start: Date.now + 600, end: Date.now + 3480)
        )
        
        let bookingResult = travelBookingSystem.bookTravelPackage(
            flights: [flightDetails],
            hotels: [hotelBookingDetails],
            carRentals: []
        )
        
        XCTAssertFalse(bookingResult)
    }
}
