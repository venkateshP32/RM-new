//
//  GetAllCharactersByIdUseCaseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class GetAllCharactersByIdUseCaseUnitTest: XCTestCase {

    var sut: GetAllCharactersByIdUseCase?
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testGetAllCharactersByIdIsCalled() throws {
        
        // Given
        let repository = MockCharacterRepository()
        let ids = [1,2]
        sut = GetAllCharactersByIdUseCase(repository: repository)
        
        // When
        _ = sut!.execute(ids: ids)
        
        // Then
        XCTAssertTrue(repository.isgetAllCharactersByIdCalled)
    }
}
