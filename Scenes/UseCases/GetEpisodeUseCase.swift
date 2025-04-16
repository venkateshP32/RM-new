//
//  GetEpisodeUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetEpisodeUseCase {
    
    private let repository: EpisodeRepository
    
    init(repository: EpisodeRepository = EpisodeRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(page: Int) -> AnyPublisher<[Episode], Error> {
        
        repository.getEpisode(page: page)
    }
}
