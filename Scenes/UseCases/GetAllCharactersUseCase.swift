//
//  GetAllCharactersUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetAllCharactersUseCase {
    
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = CharacterRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(page: Int) -> AnyPublisher<[Character], Error> {
        
        repository.getAllCharacters(page: page)
    }
}
