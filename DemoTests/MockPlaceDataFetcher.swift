//
//  MockPlaceDataFetcher.swift
//  DemoTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import Foundation

class MockPlaceDataFetcher: PlaceDataFetcherProtocol {
    
    var places = [Place]()
    
    init () {
        let firstPlace = Place(attributes: ["name": "Cafe De Latina", "vicinity": "Bengaluru", "rating": 3.0, "opening_hours": ["open_now": false]])
        places.append(firstPlace)
        let secondPlace = Place(attributes: ["name": "Hotel Taj", "vicinity": "Mumbai", "rating": 4.8, "opening_hours": ["open_now": true]])
        places.append(secondPlace)
    }
    
    func fetchPlaces(completion: ([Place]?,_ errorMessage: String?)->()) {
        completion(places, nil)
    }

}
