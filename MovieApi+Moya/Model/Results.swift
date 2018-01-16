//
//  Results.swift
//  MovieApi+Moya
//
//  Created by Malcolm Kumwenda on 2018/01/16.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import Foundation

struct Results {
    let page: Int
    let numberOfResults: Int
    let numberOfPages: Int
    let movies: [Movie]
}

extension Results: Decodable {
    
    private enum ResultsCodingKeys: String, CodingKey {
        case page
        case numberOfResults
        case numberOfPages
        case movies
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: ResultsCodingKeys.self)
        
        page = try container.decode(Int.self, forKey: .page)
        numberOfResults = try container.decode(Int.self, forKey: .numberOfResults)
        numberOfPages = try container.decode(Int.self, forKey: .numberOfPages)
        movies = try container.decode([Movie].self, forKey: .movies)
        
    }
}
