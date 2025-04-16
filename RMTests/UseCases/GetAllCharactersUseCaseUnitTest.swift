//
//  GetAllCharactersUseCaseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class GetAllCharactersUseCaseUnitTest: XCTestCase {
    
    var sut: GetAllCharactersUseCase?
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testGetAllCharactersIsCalled() throws {
        
        // Given
        let repository = MockCharacterRepository()
        let page = 1
        sut = GetAllCharactersUseCase(repository: repository)
        
        // When
        _ = sut!.execute(page: page)
        
        // Then
        XCTAssertTrue(repository.isGetAllCharactersCalled)
    }
}

