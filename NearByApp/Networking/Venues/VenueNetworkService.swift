//
//  VenueNetworkService.swift
//  NearByApp
//
//  Created by Islam on 8/22/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

public class VenueNetworkService: NetworkService, VenueUseCases {

    func search(_ input: Venue.Search.Input,
                completion: @escaping (Result<Venue.Search.Output, NetworkError>) -> Void) {

        let request = VenueRouter.search(input)
        client.request(request, completion: completion)
    }
}
