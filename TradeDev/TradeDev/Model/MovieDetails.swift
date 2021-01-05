//
//  MovieDetails.swift
//  TradeDev
//
//  Created by Jinto Antony on 2021-01-05.
//  Copyright © 2021 JA. All rights reserved.
//

import Foundation

struct MovieDetails: Decodable {
    
    let id : Int?
    let name: String?
    let description: String?
    let notes: String?
    let rating: String?
    let picture: String?
    let releaseDate: String?
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case description = "Description"
        case notes = "Notes"
        case rating = "Rating"
        case picture = "picture"
        case releaseDate = "releaseDate"
    }
    
}
