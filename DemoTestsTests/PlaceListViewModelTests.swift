    //
//  PlaceListViewModelTests.swift
//  DemoTestsTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import XCTest
@testable import DemoTests

class PlaceListViewModelTests: XCTestCase {
    
    var sut: PlaceListViewModel!
    var mockPlaceDataFetcher: MockPlaceDataFetcher!
    
    override func setUp() {
        super.setUp()
        sut = PlaceListViewModel(dataFetcher: MockPlaceDataFetcher())
        mockPlaceDataFetcher = MockPlaceDataFetcher()
        sut.viewDidLoad()
    }

    override func tearDown() {
        super.tearDown()
        sut = nil
        mockPlaceDataFetcher = nil
    }
    
    func testOutputAttributes() {
        let tableModel = tableDataModel()
        XCTAssertEqual(sut.numberOfRows, tableModel.count)
        XCTAssertEqual(sut.title, "Place List")
    }
    
    func testDataModelForIndexPath() {
        let tableModel = tableDataModel()
        let indexPath = IndexPath(row: 0,section: 0)
        XCTAssertEqual(tableModel[0], sut.tableCellDataModelForIndexPath(indexPath))
    }
    
    func tableDataModel() -> [PlaceCellDataModel] {
        var dataModel = [PlaceCellDataModel]()
        for place in mockPlaceDataFetcher.places {
            dataModel.append(PlaceCellDataModel(place: place))
        }
        return dataModel
    }
}
