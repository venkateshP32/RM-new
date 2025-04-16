//
//  LocationDetailUseCase.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class GetLocationDetailUseCase {
    
    private let repository: LocationRepository
    
    init(repository: LocationRepository = LocationRepositoryImplementation()) {
        
        self.repository = repository
    }
    
    func execute(id: Int) -> AnyPublisher<Location, Error> {
        
        repository.getLocationDetail(id: id)
    }
}
