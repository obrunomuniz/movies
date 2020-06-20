//
//  Movie.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

/// Data structure for movie object.
struct Movie: Equatable {

    let id: Int64?
    let title: String?
    let overview: String?
    let posterPath: String?
    let releaseDate: Date?
}

extension Movie: Decodable {

    enum CodingKeys: String, CodingKey {
        case id, title, overview
        case posterPath  = "poster_path"
        case releaseDate = "release_date"
    }

    init?(data: Data) {
        guard let me = try? JSONDecoder.theMovieDB.decode(Movie.self, from: data) else { return nil }
        self = me
    }
}
