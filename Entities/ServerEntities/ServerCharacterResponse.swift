//
//  ServerCharacterResponse.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
struct ServerCharacterResponse: Codable {
    
    let id: Int
    let name: String
    let status: String
    let species: String
    let type: String
    let gender: String
    let origin: ServerOriginResponse?
    let location: ServerLocationResponse?
    let image: String
    let url: String
    let episode: [String]
    
    func converToEntity() -> Character {
        
        return Character(id: id,
                         name: name,
                         status: CharacterStatus(rawValue: status.capitalizingFirstLetter()) ?? .unknown,
                         species: species,
                         type: type.capitalizingFirstLetter(),
                         gender: gender.capitalizingFirstLetter(),
                         origin: origin?.name?.capitalizingFirstLetter() ?? "",
                         location: location?.name?.capitalizingFirstLetter() ?? "",
                         image: image,
                         url: url,
                         episode: episode)
    }
}
