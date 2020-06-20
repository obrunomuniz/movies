//
//  JSONDecoder+.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

extension JSONDecoder {

    /// Default JSON Decoder for The Movies DB.
    static let theMovieDB: JSONDecoder = {
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .formatted(.yyyyMMdd)
        return decoder
    }()
}
