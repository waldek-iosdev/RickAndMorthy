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
    ///   - completion: Callback with data or error
    public func execute(_ request: RMRequest, completion: @escaping () -> Void) {
        
    }
}
