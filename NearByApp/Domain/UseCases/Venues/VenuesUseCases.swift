//
//  VenuesUseCases.swift
//  NearByApp
//
//  Created by Islam on 8/16/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

protocol VenueUseCases: class {
    associatedtype VenueSearchError: Error
    func search(_ input: Venue.Search.Input,
                completion: @escaping (Result<Venue.Search.Output, VenueSearchError>) -> Void)
}
