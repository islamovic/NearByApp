//
//  SearchRequestData.swift
//  NearByApp
//
//  Created by Islam on 8/22/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

extension Venue.Search.Input: Wrap {

    func wrap() -> [String : Any] {
        return [
            "ll": "\(latitude),\(longitude)",
            "venuePhotos": venuePhoto,
            "v": Constants.UserLess.version,
            "client_id": Constants.UserLess.clientId,
            "client_secret": Constants.UserLess.clientSecret
        ]
    }
}
