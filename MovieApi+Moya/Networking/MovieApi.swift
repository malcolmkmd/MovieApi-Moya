//
//  MovieApi.swift
//  MovieApi+Moya
//
//  Created by Malcolm Kumwenda on 2018/01/16.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import Foundation
import Moya

enum MovieApi {
    case recommended(id:Int)
    case popular(page:Int)
    case newMovies(page:Int)
    case video(id:Int)
}

extension MovieApi: TargetType {
    var baseURL: URL {
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/") else { fatalError("baseURL could not be configured.")}
        return url
    }
    
    var path: String {
        switch self {
        case .recommended(let id):
            return "\(id)/recommendations"
        case .popular:
            return "popular"
        case .newMovies:
            return ""
        case .video(let id):
            return "\(id)/videos"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var sampleData: Data {
        return Data()
    }
    
    var task: Task {
        switch self {
        case .recommended, .video:
            return .requestParameters(parameters: ["api_key":  NetworkManager.MovieAPIKey], encoding: URLEncoding.queryString)
        case .popular(let page), .newMovies(let page):
            return .requestParameters(parameters: ["page":page, "api_key": NetworkManager.MovieAPIKey], encoding: URLEncoding.queryString)
        }
    }
    
    var headers: [String : String]? {
        return ["Content-type": "application/json"]
    }
    
    
}
