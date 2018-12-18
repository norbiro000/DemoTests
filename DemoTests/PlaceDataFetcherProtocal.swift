//
//  PlaceDataFetcherProtocal.swift
//  DemoTests
//
//  Created by Jakkapan Thongkum on 18/12/2561 BE.
//  Copyright © 2561 Jakkapan Thongkum. All rights reserved.
//

import Foundation

protocol PlaceDataFetcherProtocol {
    func fetchPlaces(completion: ([Place]?,_ errorMessage: String?)->())
}
