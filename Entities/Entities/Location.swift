//
//  Location.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct Location: Identifiable, Equatable {
    
    let id: Int
    let name: String
    let type: String
    let residents: [String]
    let dimension: String
}
