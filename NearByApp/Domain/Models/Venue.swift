//
//  Venue.swift
//  NearByApp
//
//  Created by Islam on 8/16/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

struct ResponseObject: Codable {
    let response: Response
}

struct Response: Codable {
    let groups: [VenueGroup]
}

struct VenueGroup: Codable {
    let items: [VenueItem]
}

struct VenueItem: Codable {
    let venue: Venue
}

struct Venue: Codable {
    let id: String
    let name: String
    let location: VenueLocation
}

struct VenueLocation: Codable {
    let formattedAddress: [String]
}
