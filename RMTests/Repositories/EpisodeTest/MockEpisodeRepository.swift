//
//  MockEpisodeRepository.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
import Combine
@testable import RM

class MockEpisodeRepository: EpisodeRepository {
    
    var isGetEpisodeCalled = false
    var isGetEpisodeDetailCalled = false
    
    func getEpisode(page: Int) -> AnyPublisher<[Episode], Error> {
        
        self.isGetEpisodeCalled = true
        
        return Just([])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    func getEpisodeDetail(id: Int) -> AnyPublisher<Episode, Error> {
        
        self.isGetEpisodeDetailCalled = true
        
        return Just(Episode(id: 1,
                            name: "",
                            episode: "",
                            airDate: "",
                            characters: [""]))
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
