//
//  LocationDetailUseCaseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class LocationDetailUseCaseUnitTest: XCTestCase {

    var sut: GetLocationDetailUseCase?
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testGetLocationDetailIsCalled() throws {
        
        // Given
        let repository = MockLocationRepository()
        sut = GetLocationDetailUseCase(repository: repository)
        
        // When
        _ = sut!.execute(id: 1)
        
        // Then
        XCTAssertTrue(repository.isGetLocationDetailCalled)
    }
}
