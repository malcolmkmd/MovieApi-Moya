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
    case reco(id:Int)
    case topRated(page:Int)
    case newMovies(page:Int)
    case video(id:Int)
}
