//
//  CharacterDetailItemViewUnitTests.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

@testable import RM
import XCTest
import ViewInspector


final class CharacterDetailItemViewUnitTests: XCTestCase {
    
    override func setUpWithError() throws {
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }
    
    func testSetup() throws {
        
        // Given
        let title = "Mr"
        let value = "Roboto"
        
        let sut = CharacterDetailItemView(
            title: title,
            value: value)
        
        // When
        let titleText = try! sut.inspect().find(text: title).string()
        let valueText = try! sut.inspect().find(text: value).string()
        
        // Then
        XCTAssertNotNil(titleText)
        XCTAssertNotNil(valueText)
        
        XCTAssertEqual(titleText, title)
        XCTAssertEqual(valueText, value)
        
    }
}
