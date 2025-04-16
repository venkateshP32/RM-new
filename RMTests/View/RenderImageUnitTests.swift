//
//  RenderImageUnitTests.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

@testable import RM
import XCTest
import SwiftUI
import ViewInspector

final class RenderImageUnitTests: XCTestCase {

    override func setUpWithError() throws {
        try super.setUpWithError()
    }

    override func tearDownWithError() throws {
        try super.tearDownWithError()
    }

    func testAsyncImageView() throws {
       
        // Given
        let urlExample = "https://icons.iconarchive.com/icons/iconarchive/cute-animal/256/Cute-Cat-icon.png"
        let sut = RenderImage(imageUrlString: urlExample)
        
        // When
        let image = try! sut.inspect().find(ViewType.AsyncImage.self)
        let successPhase = try! sut.inspect().find(viewWithId: "imageLoaded")
        let failurePhase = try! sut.inspect().find(viewWithId: "defaultImageLoaded")
        
        // Then
        XCTAssertNotNil(image)
        XCTAssertNotNil(successPhase)
        XCTAssertNotNil(failurePhase)
    }
}
