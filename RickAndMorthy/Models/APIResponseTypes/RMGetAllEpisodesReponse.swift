//
//  RMGetAllEpisodesReponse.swift
//  RickAndMorthy
//
//  Created by Waldek on 05/03/2023.
//

import Foundation

struct RMGetAllEpisodesReponse: Codable {
    struct Info: Codable {
        let count: Int
        let pages: Int
        let next: String?
        let prev: String?
    }
    
    let info: Info
    let results: [RMEpisode]
}
