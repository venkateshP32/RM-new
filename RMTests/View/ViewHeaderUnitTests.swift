//
//  ViewHeaderUnitTests.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

@testable import RM
import XCTest
import SwiftUI
import ViewInspector

final class ViewHeaderUnitTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testSetup() throws {
        
        // Given
        let sut = ListHeaderView()
        
        // When
        let image = try! sut.inspect().find(ViewType.Image.self)
        let headerText = try! sut.inspect().find(text: "Click on any cell for further information")
        
        // Then
        XCTAssertNotNil(image)
        XCTAssertNotNil(headerText)
        XCTAssertEqual(try! headerText.attributes().font(), .caption)
    }
}
