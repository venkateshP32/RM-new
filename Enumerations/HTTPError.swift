//
//  HTTPError.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
enum HTTPError: LocalizedError, Equatable {
    case invalidResponse
    case invalidStatusCode
}
