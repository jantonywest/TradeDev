//
//  Movies.swift
//  TradeDev
//
//  Created by Jinto Antony on 2021-01-05.
//  Copyright © 2021 JA. All rights reserved.
//

import Foundation

struct Movies: Decodable {
    
    let movies : [Movie]?
    enum CodingKeys: String, CodingKey {
        case movies = "movies"
    }

}
