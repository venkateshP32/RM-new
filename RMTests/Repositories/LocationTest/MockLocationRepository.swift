//
//  MockLocationRepository.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
import Combine
@testable import RM

class MockLocationRepository: LocationRepository {
     
    var isGetLocationCalled = false
    var isGetLocationDetailCalled = false
      
    func getLocation(page: Int) -> AnyPublisher<[Location], Error> {
        
        self.isGetLocationCalled = true
        
        return Just([])
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
    
    func getLocationDetail(id: Int) -> AnyPublisher<Location, Error> {
        
        self.isGetLocationDetailCalled = true
        
        return Just(Location(id: 1,
                             name: "",
                             type: "",
                             residents: [""],
                             dimension: ""))
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}

