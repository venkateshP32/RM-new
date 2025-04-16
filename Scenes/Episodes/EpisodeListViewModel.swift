//
//  EpisodeListViewModel.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import SwiftUI
import Combine

class EpisodeListViewModel: ObservableObject {
    
    @Published public private(set) var episodes: [Episode] = []
    
    @Published public private(set) var showProgressView = false
    
    var currentPage = 1
    
    private var cancellable: AnyCancellable?
    
    // MARK: - Methods
    
    func getEpisode(page: Int) {
       
        showProgressView = true
        
        cancellable = GetEpisodeUseCase().execute(page: page)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                self.showProgressView = false
                
                switch completion {
                case .finished:
                    
                    self.currentPage += 1
                    
                    break
                    
                case .failure:
                    break
                }
                
            }, receiveValue: {(episodes: [Episode]) in
                
                self.episodes.append(contentsOf: episodes)
            })
    }
}
