//
//  Place.swift
//  DemoTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import Foundation

struct Place {
    
    var name: String?
    var address: String?
    var rating: Double?
    var openStatus: Bool?
    
    init(attributes: [String: Any]) {
        self.address = attributes["vicinity"] as? String
        self.name = attributes["name"] as? String
        self.rating = attributes["rating"] as? Double
        if let openingHours = attributes["opening_hours"] as? [String: Any] {
            self.openStatus = openingHours["open_now"] as? Bool
        }
    }
    
}
