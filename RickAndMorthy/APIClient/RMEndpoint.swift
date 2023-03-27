//
//  RMEndpoint.swift
//  RickAndMorthy
//
//  Created by Waldek on 09/01/2023.
//

import Foundation

/// Represents unique APi enpoint
@frozen enum RMEndpoint: String, CaseIterable ,Hashable {
    /// Enpoint to get character info
    case character
    /// Enpoint to get location info
    case location
    /// Enpoint to get episode info
    case episode
}
