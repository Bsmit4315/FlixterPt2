//
//  Poster.swift
//  flixster
//
//  Created by Bryson Smith on 2/1/23.
//

import Foundation

struct PosterSearchResponse: Decodable {
    let results: [Poster]
}

struct Poster: Decodable {
    var original_title: String
    var overview: String
    
    var poster_path: String // when loading image with Nuke, make sure you convert to url by prepending base url
    static var posterBaseURLString: String = "https://image.tmdb.org/t/p/w185"
    
    var vote_average: Double
    var vote_count: Int
}
