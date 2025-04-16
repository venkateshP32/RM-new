//
//  Episode.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct Episode: Identifiable, Equatable {
    
    let id: Int
    let name: String
    let episode: String
    let airDate: String
    let characters: [String]
}
