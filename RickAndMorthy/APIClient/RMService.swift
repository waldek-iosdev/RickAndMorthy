//
//  RMService.swift
//  RickAndMorthy
//
//  Created by Waldek on 09/01/2023.
//

import Foundation

// cmd opt / - docs

/// Primary API service object to get Rick And Morthy data
final class RMService {
    /// Shared singleton instance - access from anywhere in whole app
    static let shared = RMService()
    
    
    /// Privatized constructor
    private init() {}
    
    /// Send Rick and Morthy API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void) {
        
    }
}
