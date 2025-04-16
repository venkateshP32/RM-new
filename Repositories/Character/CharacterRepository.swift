//
//  CharacterRepository.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

protocol CharacterRepository {
    
    func getAllCharacters(page: Int)  -> AnyPublisher<[Character], Error>
    
    func getCharacterDetail(id: Int) -> AnyPublisher<Character, Error>
    
    func getAllCharactersById(ids: [Int]) -> AnyPublisher<[Character], Error>
}
