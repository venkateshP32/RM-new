//
//  ServerEpisodeResponseUnitTest.swift
//  RMTests
//
//  Created by Venkatesh Peddigari on 14/04/25.
//

import XCTest
@testable import RM

class ServerEpisodeResponseUnitTest: XCTestCase {
    
    override func setUpWithError() throws {
        
        try super.setUpWithError()
    }
    
    override func tearDownWithError() throws {
        
        try super.tearDownWithError()
    }
    
    func testEpisodeConvertToEntity() throws {
        
        // Given
        let serverEpisodeResponse = ServerGetEpisodeResponse(id: 1,
                                                             name: "name",
                                                             episode: "episode",
                                                             airDate: "airDate",
                                                             characters: [""])
        
        // When
        let episode = serverEpisodeResponse.converToEntity()
        
        // Then
        XCTAssertEqual(episode.id, serverEpisodeResponse.id)
        XCTAssertEqual(episode.name, serverEpisodeResponse.name.capitalizingFirstLetter())
        XCTAssertEqual(episode.episode, serverEpisodeResponse.episode)
        XCTAssertEqual(episode.airDate, serverEpisodeResponse.airDate)
    }
}
