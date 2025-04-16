//
//  GetAllCharactersByIdUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetAllCharactersByIdUseCase {
    
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = CharacterRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(ids: [Int]) -> AnyPublisher<[Character], Error> {
        
        repository.getAllCharactersById(ids: ids)
    }
}
