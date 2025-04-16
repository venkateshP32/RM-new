//
//  CharacterDetailUseCaseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class CharacterDetailUseCaseUnitTest: XCTestCase {

    var sut: GetCharacterDetailUseCase?
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        sut = nil
        try super.tearDownWithError()
    }
    
    func testGetCharacterDetailIsCalled() throws {
        
        // Given
        let repository = MockCharacterRepository()
        sut = GetCharacterDetailUseCase(repository: repository)
        
        // When
        _ = sut!.execute(id: 1)
        
        // Then
        XCTAssertTrue(repository.isGetCharacterDetailCalled)
    }
}
