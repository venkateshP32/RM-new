//
//  GetLocationUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetLocationUseCase {
    
    private let repository: LocationRepository
    
    init(repository: LocationRepository = LocationRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(page: Int) -> AnyPublisher<[Location], Error> {
        
        repository.getLocation(page: page)
    }
}
