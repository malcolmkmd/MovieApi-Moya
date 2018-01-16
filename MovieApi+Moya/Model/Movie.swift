//
//  Movie.swift
//  MovieApi+Moya
//
//  Created by Malcolm Kumwenda on 2018/01/16.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import Foundation

struct Movie {
    let id: Int
    let posterPath: String
    let videoPath: String
    let backdrop: String
    let title: String
    let releaseDate: String
    let rating: String
    let overview: String
}

extension Movie: Decodable {
    enum MovieCodingKeys: String, CodingKey {
        case id
        case posterPath = "poster_path"
        case videoPath
        case backdrop = "backdrop_path"
        case title
        case releaseDate = "release_date"
        case rating = "vote_avaerage"
        case overview
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: MovieCodingKeys.self)
        
        id = try container.decode(Int.self, forKey: .id)
        posterPath = try container.decode(String.self, forKey: .posterPath)
        videoPath = try container.decode(String.self, forKey: .videoPath)
        backdrop = try container.decode(String.self, forKey: .backdrop)
        title = try container.decode(String.self, forKey: .title)
        releaseDate = try container.decode(String.self, forKey: .releaseDate)
        rating = try container.decode(String.self, forKey: .rating)
        overview = try container.decode(String.self, forKey: .overview)
    }
}


