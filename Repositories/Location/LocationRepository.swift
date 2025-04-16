//
//  LocationRepository.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

protocol LocationRepository {
    
    func getLocation(page: Int) -> AnyPublisher<[Location], Error>
    
    func getLocationDetail(id: Int) -> AnyPublisher<Location, Error>
}
