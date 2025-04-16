//
//  LocationRemoteDataSource.swift
//  RM
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import Foundation
import Combine

class LocationRemoteDataSource {
    
    static let getLocationURL: String = "location"
    static let getPage: String = "?page="
    private let baseURLString: String
    private let session: URLSession
    
    init(baseURL: String = Constants.baseURL, session: URLSession = URLSession.shared) {
        
        self.baseURLString = baseURL
        self.session = session
    }
    
    func getLocation(page: Int) -> AnyPublisher<ServerBaseArrayResponse<ServerGetLocationResponse>, Error> {
        
        let apiManager = ApiManager(baseURL: baseURLString, session: session)
        
        let urlRequest = getLocationEndpoint(page: page)
        
        return apiManager.performRequest(urlRequest: urlRequest)
    }
    
    func getLocationDetail(id: Int) -> AnyPublisher<ServerResultResponse<ServerGetLocationResponse>, Error> {
        
        let apiManager = ApiManager(baseURL: baseURLString, session: session)
        
        let urlRequest = getLocationDetailEndpoint(id: id)
        
        return apiManager.performRequest(urlRequest: urlRequest)
    }
}

extension LocationRemoteDataSource {
    
    func getLocationEndpoint(page: Int) -> URLRequest {
        
        let endpoint = "\(baseURLString)\(LocationRemoteDataSource.getLocationURL)\(LocationRemoteDataSource.getPage)\(page)"
        
        let components = URLComponents(string: endpoint)
        
        let urlRequest = URLRequest(url: (components?.url!)!)
        
        return urlRequest
    }
    
    func getLocationDetailEndpoint(id: Int) -> URLRequest {
        
        let endpoint = "\(baseURLString)\(LocationRemoteDataSource.getLocationURL)\(id)"
        
        let components = URLComponents(string: endpoint)
        
        let urlRequest = URLRequest(url: (components?.url!)!)
        
        return urlRequest
    }
}
