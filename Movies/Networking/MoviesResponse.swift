//
//  MoviesResponse.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

/// Movies response handler (JSON parsing).
enum MoviesResponse {
    case success(movies: [Movie])
    case failed(error: ApiErrorType)

    /// Parses data from API response.
    ///
    /// - Parameter jsonData: JSON as Data
    /// - Returns: MoviesResponse
    static func parse(_ jsonData: Data) -> MoviesResponse {
        guard let results = MoviesResults(data: jsonData) else {
            debugPrint("💥 DECODING ERROR: MoviesResults")
            return .failed(error: .parseError)
        }
        return .success(movies: results.movies)
    }
}
