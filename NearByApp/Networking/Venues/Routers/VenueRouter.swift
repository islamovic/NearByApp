//
//  VenueRouter.swift
//  NearByApp
//
//  Created by Islam on 8/22/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

enum VenueRouter: Router {
    static var name: String? = "venues"
}

extension VenueRouter {

    static func search(_ input: Venue.Search.Input) -> Request<Venue.Search.Output> {
        let url = generateURL("explore")
        let params = input.wrap()
        return Request(url: url, params: params, parse: { try? .init(dataObject: $0) })
    }
}
