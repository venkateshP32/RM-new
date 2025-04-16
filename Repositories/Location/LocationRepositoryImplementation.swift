//
//  LocationRepositoryImplementation.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class LocationRepositoryImplementation: LocationRepository {
   
    private let remoteDataSource: LocationRemoteDataSource
    
    init(remoteDataSource: LocationRemoteDataSource = LocationRemoteDataSource()) {
        
        self.remoteDataSource = remoteDataSource
    }
    
    func getLocation(page: Int) -> AnyPublisher<[Location], Error> {
        
        return remoteDataSource.getLocation(page: page).map {
            
            serverLocation -> [Location] in
            
            var locations: [Location] = []
            
            for serverLocation in serverLocation.results {
                
                let location = serverLocation.converToEntity()
                locations.append(location)
            }
            
            return locations
        }
        .mapError({ $0 })
        .eraseToAnyPublisher()
    }
    
    func getLocationDetail(id: Int) -> AnyPublisher<Location, Error> {
        
        return remoteDataSource.getLocationDetail(id: id).map { serverLocation -> Location in

            // convert to entity
            let location = serverLocation.results.converToEntity()
            
            // Return
            return location
        }
        .mapError({ $0 })
        .eraseToAnyPublisher()
    }
}
