//
//  EpisodeDetailUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetEpisodeDetailUseCase {
    
    private let repository: EpisodeRepository
    
    init(repository: EpisodeRepository = EpisodeRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(id: Int) -> AnyPublisher<Episode, Error> {
        
        repository.getEpisodeDetail(id: id)
    }
}
