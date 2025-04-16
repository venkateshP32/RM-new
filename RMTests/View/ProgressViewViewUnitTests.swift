//
//  ProgressViewViewUnitTests.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

@testable import RM
import XCTest
import ViewInspector

final class ProgressViewViewUnitTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testSetup() throws {
        
        // Given
        let sut = ProgressViewView()
        
        // When
        let loader = try! sut.inspect().find(viewWithId: "loader")
        
        // Then
        XCTAssertNotNil(loader)
    }
}
