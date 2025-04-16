//
//  ServerGetLocationResponse.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct ServerGetLocationResponse: Codable {
    
    let id: Int
    let name: String
    let type: String
    let residents: [String]
    let dimension: String
    
    func converToEntity() -> Location {
        
        return Location(id: id,
                        name: name.capitalizingFirstLetter(),
                        type: type.capitalizingFirstLetter(),
                        residents: residents,
                        dimension: dimension.capitalizingFirstLetter())
    }
}
