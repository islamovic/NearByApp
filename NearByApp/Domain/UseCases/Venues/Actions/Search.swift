//
//  Search.swift
//  NearByApp
//
//  Created by Islam on 8/16/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

extension Venue {
    enum Search { }
    enum Photos { }
}

extension Venue.Search {

    struct Input {
        let latitude: Double
        let longitude: Double
        let venuePhoto: Bool
    }

    struct Output {
        var venues: [Venue]
        init() {
            venues = []
        }
    }
}
