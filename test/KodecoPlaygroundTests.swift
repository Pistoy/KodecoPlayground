//
//  KodecoPlaygroundTests.swift
//  KodecoPlayground
//
//  Created by Emre Cekic on 26.04.2024.
//

import XCTest
@testable import KodecoPlayground

final class KodecoPlaygroundTests: XCTestCase {
    
    var game: Game!
    
    override func setUpWithError() throws {
        game = Game()
    }

    override func tearDownWithError() throws {
        game = nil
    }

    func testExample() throws {
        XCTAssertEqual(game.calcPoint(sliderValue: 100, targetValue: 100), 100)
    }

}
