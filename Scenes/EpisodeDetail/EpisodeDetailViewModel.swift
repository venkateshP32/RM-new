//
//  EpisodeDetailViewModel.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine
import SwiftUI

class EpisodeDetailViewModel: ObservableObject {
    
    @Published public private(set) var episode: Episode
    @Published public private(set) var characters: [Character] = []
    @Published public private(set) var showProgressView = false
    
    private var charactersIds: [Int] = []
    
    private var cancellable: AnyCancellable?
    
    let episodeSeasonIcon: String
    let episodeSeason: String
    let airDateIcon: String
    let airDate: String
    let characterStarringIcon: String
    let characterStarring: String
    let charactersTitle: String
    let episodeDetail: String
    let episodeString: String
    let currentStatus: String
    
    let unknownInfo: String
    let unknownString: String
    
    let imageSize: CGFloat = 50
    let cornerRadius: CGFloat = 50
    
    // MARK: - Methods
    
    init(episode: Episode){
        
        episodeSeasonIcon = "📺"
        episodeSeason = "Episode"
        airDateIcon = "📆"
        airDate = "Air Date"
        characterStarringIcon = "🛸"
        characterStarring = "# characters starring"
        charactersTitle = "Characters"
        episodeDetail = "Been in"
        episodeString = "episodes"
        currentStatus = "Current status"
        
        unknownInfo = "unknown"
        unknownString = "Unknown"
        
        self.episode = episode
        charactersIds = getCharactersID()
    }
    
    func getEpisodeDetail() {
        
        showProgressView = true
        
        cancellable = GetEpisodeDetailUseCase().execute(id: episode.id)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                self.showProgressView = false
                self.getAllEpisodeCharactersById()
                
                switch completion {
                case .finished:
                    break
                case .failure:
                    break
                }
                
            }, receiveValue: { (episode: Episode) in
                
                self.episode = episode
            })
    }
    
    func getAllEpisodeCharactersById() {
        
        showProgressView = true
        
        cancellable = GetAllCharactersByIdUseCase().execute(ids: charactersIds)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                self.showProgressView = false
                
                switch completion {
                case .finished:
                    break
                case .failure:
                    break
                }
                
            }, receiveValue: { (characters: [Character]) in
                
                self.characters = characters
            })
    }
    
    func getCharactersID() -> [Int] {
        
        var charactersIds: [Int] = []
        
        for character in episode.characters {
            
            let characterSplit = character.split(separator: "/")
            let characterId = (characterSplit.last! as NSString).integerValue
            
            charactersIds.append(characterId)
        }

        return charactersIds
    }
}
