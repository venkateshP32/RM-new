//
//  ServerLocationResponseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class ServerLocationResponseUnitTest: XCTestCase {
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        
        try super.tearDownWithError()
    }
    
    func testLocationConvertToEntity() throws {
        
        // Given
        let serverLocationResponse = ServerGetLocationResponse(id: 1,
                                                               name: "name",
                                                               type: "type",
                                                               residents: [],
                                                               dimension: "dimension")
        
        // When
        let location = serverLocationResponse.converToEntity()
        
        // Then
        XCTAssertEqual(location.id, serverLocationResponse.id)
        XCTAssertEqual(location.name, serverLocationResponse.name.capitalizingFirstLetter())
        XCTAssertEqual(location.type, serverLocationResponse.type.capitalizingFirstLetter())
        XCTAssertEqual(location.dimension, serverLocationResponse.dimension.capitalizingFirstLetter())
    }
}
