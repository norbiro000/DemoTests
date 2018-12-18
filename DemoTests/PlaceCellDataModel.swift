//
//  PlaceCellDataModel.swift
//  DemoTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import Foundation

struct PlaceCellDataModel: Equatable {
    var name: String
    var address: String
    var rating: String
    var openStatusText: String
    
    init(place: Place) {
        name = place.name ?? ""
        address = place.address ?? ""
        rating = place.rating?.description ?? "0.0"
        guard let isOpen = place.openStatus else {
            openStatusText = "Sorry we are closed."
            return
        }
        openStatusText = isOpen ? "We are open. Hop in now!!" : "Sorry we are closed."
    }
}
