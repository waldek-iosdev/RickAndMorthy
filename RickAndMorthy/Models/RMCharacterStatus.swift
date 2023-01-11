//
//  RMCharacterStatus.swift
//  RickAndMorthy
//
//  Created by Waldek on 09/01/2023.
//

import Foundation

enum RMCharacterStatus: String, Codable {
//    'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown" // keyword
}
