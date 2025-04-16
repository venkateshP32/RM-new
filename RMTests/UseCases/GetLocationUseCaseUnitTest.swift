//
//  GetLocationUseCaseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class GetLocationUseCaseUnitTest: XCTestCase {
    
    var sut: GetLocationUseCase?

    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        
        sut = nil
        try super.tearDownWithError()
    }

    func testGetLocationsIsCalled() throws {
        
        // Given
        let repository = MockLocationRepository()
        let page = 1
        sut = GetLocationUseCase(repository: repository)
        
        // When
        _ = sut!.execute(page: page)
        
        // Then
        XCTAssertTrue(repository.isGetLocationCalled)
    }
}

