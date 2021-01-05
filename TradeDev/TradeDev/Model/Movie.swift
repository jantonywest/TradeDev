//
//  Movie.swift
//  TradeDev
//
//  Created by Jinto Antony on 2021-01-05.
//  Copyright © 2021 JA. All rights reserved.
//

import Foundation

struct Movie: Decodable {
    
    let id : Int?
    let name: String?
    let thumbnail: String?
    let year: String?
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
        case thumbnail = "thumbnail"
        case year = "year"
        
    }
    
}
