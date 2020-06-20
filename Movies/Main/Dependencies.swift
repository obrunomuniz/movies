//
//  Dependencies.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

final class Dependencies {

    static let shared = Dependencies()

    var api: TheMovieDBApi

    init() {
        let apiManager = APIManager(session: URLSession(configuration: .default))
        self.api = TheMovieDBApi(manager: apiManager)
    }
}

