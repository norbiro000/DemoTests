//
//  PlaceTests.swift
//  DemoTestsTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import XCTest
@testable import DemoTests

class PlaceTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        super.setUp()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testAttributes() {
        let attributes: [String: Any] = ["name": "Cafe De Latina", "vicinity": "Bengaluru", "rating": 4.8, "opening_hours": ["open_now": false]]
        let place = Place(attributes: attributes)
        XCTAssertEqual(place.name, "Cafe De Latina")
        XCTAssertEqual(place.address, "Bengaluru")
        XCTAssertEqual(place.rating, 4.8)
        XCTAssertEqual(place.openStatus, false)
    }

}
