//
//  CharacterDetailViewModel.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine
import SwiftUI

class CharacterDetailViewModel: ObservableObject {
    
    @Published public private(set) var character: Character
    @Published public private(set) var showProgressView = false
    
    let location: String
    let gender: String
    let status: String
    let origin: String
    let species: String
    
    let unknownInfo: String
    let unknownString: String
    
    private var cancellable: AnyCancellable?
    
    // MARK: - Methods
    
    init(character: Character) {
        
        self.character = character
        location = "Currently living in"
        gender = "Gender"
        status = "Current status"
        origin = "Born in"
        species = "Species"
        unknownInfo = "unknown"
        unknownString = "Unknown"
    }
    
    func getCharacterDetail() {
        
        showProgressView = true
        
        cancellable = GetCharacterDetailUseCase().execute(id: character.id)
            .receive(on: DispatchQueue.main)
            .sink(receiveCompletion: { completion in
                
                self.showProgressView = false
                
                switch completion {
                case .finished:
                    break
                case .failure:
                    break
                }
                
            }, receiveValue: { (character: Character) in
                
                self.character = character
            })
    }
}
