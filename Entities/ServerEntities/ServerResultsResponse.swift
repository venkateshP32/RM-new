//
//  ServerResultsResponse.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct ServerResultResponse<T: Codable>: Codable {

    let results: T
}
