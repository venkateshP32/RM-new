//
//  CharacterDetailUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetCharacterDetailUseCase {
    
    private let repository: CharacterRepository
    
    init(repository: CharacterRepository = CharacterRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(id: Int) -> AnyPublisher<Character, Error> {
        
        repository.getCharacterDetail(id: id)
    }
}
