//
//  RMCharacterGender.swift
//  RickAndMorthy
//
//  Created by Waldek on 09/01/2023.
//

import Foundation

enum RMCharacterGender: String, Codable {
//    ('Female', 'Male', 'Genderless' or 'unknown'
    case female = "Female"
    case male = "Male"
    case genderless = "Genderless"
    case `unknown` = "unknown" // keyword
}

