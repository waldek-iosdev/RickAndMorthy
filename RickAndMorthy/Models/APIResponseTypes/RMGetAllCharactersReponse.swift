//
//  RMGetAllCharactersReponse.swift
//  RickAndMorthy
//
//  Created by Waldek on 11/01/2023.
//

import Foundation

struct RMGetAllCharactersReponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMCharacter]
}
