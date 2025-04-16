//
//  ServerBaseArrayResponse.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct ServerBaseArrayResponse<T: Codable>: Codable {

    let results: [T]
}
