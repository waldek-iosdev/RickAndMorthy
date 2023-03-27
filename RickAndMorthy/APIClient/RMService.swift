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
    
    private let cacheManager = RMAPICacheManager()

    /// Privatized constructor
    private init() {}
    
    enum RMServiceError: Error {
        case failedToCreateRequest
        case failedToGetData
    }
    
    /// Send Rick and Morthy API Call
    /// - Parameters:
    ///   - request: Request instance
    ///   - type: The type of object we expect to get back - generic
    ///   - completion: Callback with data or error
    public func execute<T: Codable>(
        _ request: RMRequest,
        expecting type: T.Type,
        completion: @escaping (Result<T, Error>) -> Void
    ) {
        if let cacheData = cacheManager.cachedResponse(for: request.endpoint, url: request.url) {
            print("using cache api response")
            do {
                let result = try JSONDecoder().decode(type.self, from: cacheData)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
            return
        }
        
        guard let urlRequest = self.request(from: request) else {
            completion(.failure(RMServiceError.failedToCreateRequest))
            return
        }
        
        print("API call \(request.url?.absoluteString)" )
        
        let task = URLSession.shared.dataTask(with: urlRequest) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                completion(.failure(error ?? RMServiceError.failedToGetData))
                return
            }
            
            // Decode response
            do {
                let result = try JSONDecoder().decode(type.self, from: data)
                self?.cacheManager.setCache(for: request.endpoint, url: request.url, data: data)
                completion(.success(result))
            } catch {
                completion(.failure(error))
            }
        }
        task.resume()
    }
    
    private func request(from rmRequest: RMRequest) -> URLRequest? {
        guard let url = rmRequest.url else {
            return nil
        }
        var request = URLRequest(url: url)
        request.httpMethod = rmRequest.httpMethod
        return request
    }
}
