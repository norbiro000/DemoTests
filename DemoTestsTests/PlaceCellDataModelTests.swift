//
//  PlaceCellDataModelTests.swift
//  DemoTestsTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import XCTest
@testable import DemoTests

class PlaceCellDataModelTests: XCTestCase {
    
    var sut: PlaceCellDataModel!
    var place: Place!
    
    override func setUp() {
        super.setUp()
        let attributes: [String : Any] = ["name": "Cafe De Latina", "vicinity": "Bengaluru", "rating": 4.8, "opening_hours": ["open_now": false]]
        place = Place(attributes: attributes)
        sut = PlaceCellDataModel(place: place)
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
        place = nil
    }
    
    func testAttributes() {
        // Attributes should not be nil
        XCTAssertNotNil(sut.name, "Name is nil in PlaceCellDataModel")
        XCTAssertNotNil(sut.address, "Address is nil in PlaceCellDataModel")
        XCTAssertNotNil(sut.openStatusText, "OpenStatus is nil in PlaceCellDataModel")
        XCTAssertNotNil(sut.rating, "Rating is nil in PlaceCellDataModel")
        
        // Test if the attributes have the same desired value as they should have.
        XCTAssertEqual(sut.name, place.name)
        XCTAssertEqual(sut.address, place.address)
        XCTAssertEqual(sut.rating, place.rating?.description)
        
        guard let isOpen = place.openStatus else {
            XCTFail("OpenStatus is nil in PlaceCellDataModel")
            return
        }
        
        let openStatusText = isOpen ? "We are open. Hop in now!!" : "Sorry we are closed."
        XCTAssertEqual(sut.openStatusText, openStatusText)
    }

}
