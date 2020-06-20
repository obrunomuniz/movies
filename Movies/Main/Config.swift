//
//  Config.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

/// Constants and static data.
struct Config {

    static let apiKey = "00362d7ede3245a14e72941f51d9158a"
    
    static let maxQueriesHistoryCount = 10

    struct URL {
        static let base = "http://api.themoviedb.org/3"
        static let basePoster = "http://image.tmdb.org/t/p?rw185/"
    }
    
    struct Keys {
        static let queriesHistory = "_queriesHistory"
    }
    
    struct CellIdentifier {
        struct MovieTable {
            static let movieCell = "MovieItemCell"
            static let historyCell = "HistoryItemCell"
        }
    }
}
