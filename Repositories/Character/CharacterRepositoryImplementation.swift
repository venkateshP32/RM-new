//
//  CharacterRepositoryImplementation.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class CharacterRepositoryImplementation: CharacterRepository {
    
    private let remoteDataSource: CharacterRemoteDataSource
    
    init(remoteDataSource: CharacterRemoteDataSource = CharacterRemoteDataSource()) {
        
        self.remoteDataSource = remoteDataSource
    }
    
    func getAllCharacters(page: Int) -> AnyPublisher<[Character], Error> {
        
        return remoteDataSource.getAllCharacters(page: page).map {
            
            serverCharacter -> [Character] in
            
            var characters: [Character] = []
            
            for serverCharacter in serverCharacter.results {
                
                let character = serverCharacter.converToEntity()
                characters.append(character)
            }
            
            return characters
        }
        .mapError({ $0 })
        .eraseToAnyPublisher()
    }
    
    func getCharacterDetail(id: Int) -> AnyPublisher<Character, Error> {
        
        return remoteDataSource.getCharacterDetail(id: id).map { serverCharacter -> Character in
            
            let character = serverCharacter.converToEntity()
            
            return character
        }
        .mapError({ $0 })
        .eraseToAnyPublisher()
    }
    
    func getAllCharactersById(ids: [Int]) -> AnyPublisher<[Character], Error> {
        
        let publishers = ids.map(getCharacterDetail(id:))
        
        return Publishers.MergeMany(publishers)
        
            .collect()
            .eraseToAnyPublisher()
    }
}
