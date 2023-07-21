//  UserSubscriptionService.swift
//  Created by Rohit Patil on 08/07/23.
import Foundation

protocol UserSubscriptionService: AnyObject {
    func fetchSubscriptionState<Response: Decodable>() async -> (Response?, Error?)
}

enum UserSubscriptionServiceError: Error {
    case someError
}

/*
 Singleton design pattern implementation.

 Reference:
 [YT - iCode] Singleton - Good or Bad? https://youtu.be/x6gbDWFNin4
 [refactoring.guru] Singleton in Swift: https://refactoring.guru/design-patterns/singleton/
 */
class UserSubscriptionServiceImpl: UserSubscriptionService {
    
    public static let shared: UserSubscriptionService = UserSubscriptionServiceImpl()
    
    private init() { }
    
    public func fetchSubscriptionState<Response: Decodable>() async -> (Response?, Error?) {
        try? await Task.sleep(for: Duration.seconds(2))
        return (nil, UserSubscriptionServiceError.someError)
    }
}
