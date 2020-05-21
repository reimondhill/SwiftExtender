//
//  StringTests.swift
//  SwiftExtender
//
//  Created by Ramon Haro Marques on 21/05/2020.
//

import XCTest
@testable import SwiftExtender

class StringTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func test_GivenText_ThenAllFirstLettersCapital() {
        XCTAssertEqual("HELLO THAT IS A TEST STRING".capitalised(with: .allFirstLetters), "Hello That Is A Test String")
    }

}
