//
//  MockCharacterRepository.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
import Combine
@testable import RM

class MockCharacterRepository: CharacterRepository {
    
    var isGetAllCharactersCalled = false
    var isGetCharacterDetailCalled = false
    var isgetAllCharactersByIdCalled = false
    
    func getAllCharacters(page: Int) -> AnyPublisher<[Character], Error> {
        
        self.isGetAllCharactersCalled = true
        
        return Just([])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    func getCharacterDetail(id: Int) -> AnyPublisher<Character, Error> {
        
        self.isGetCharacterDetailCalled = true
        
        return Just(Character(id: 1,
                              name: "",
                              status: CharacterStatus(rawValue: "Unknown")!,
                              species: "",
                              type: "",
                              gender: "",
                              origin: "",
                              location: "",
                              image: "",
                              url: "",
                              episode: [""]))
        
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    func getAllCharactersById(ids: [Int]) -> AnyPublisher<[Character], Error> {
        
        self.isgetAllCharactersByIdCalled = true
        
        return Just([])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}

