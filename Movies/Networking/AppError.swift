//
//  AppError.swift
//  Movies
//
//  Created by Bruno Teixeira Muniz Rocha on 20/06/20.
//  Copyright © 2020 Bruno Teixeira Muniz Rocha. All rights reserved.
//

import Foundation

protocol AppError: Error {
    var description: String { get }
}

/// Common applicatin errors.
enum ApplicationError: AppError {
    case commonError, noResultsError, apiError(type: ApiErrorType)

    var description: String {
        switch self {
        case .commonError            : return "Ops, ocorreu um erro"
        case .noResultsError         : return "Não encontramos nada :("
        case .apiError(let apiError) : return apiError.description
        }
    }
}

/// Errors, which can occur while working with API.
enum ApiErrorType: AppError {
    case commonError, serverError, parseError, responseError

    var description: String {
        switch self {
        case .commonError   : return "Common API error"
        case .parseError    : return "Parse Error"
        case .responseError : return "Response Error"
        case .serverError   : return "Server Error"
        }
    }
}

