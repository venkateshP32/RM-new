//
//  EpisodeRepository.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

protocol EpisodeRepository {
    
    func getEpisode(page: Int) -> AnyPublisher<[Episode], Error>
    
    func getEpisodeDetail(id: Int) -> AnyPublisher<Episode, Error>
}
