//
//  SearchResponse.swift
//  NearByApp
//
//  Created by Islam on 8/22/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import Foundation

extension Venue.Search.Output: Unwrapping {
    init(dataObject: Data?) throws {

        self.init()
        guard let data = dataObject else { throw NetworkError.InValidData }
        do {
            let response = try JSONDecoder().decode(ResponseObject.self, from: data)
            if let venuesResponse = response.response.groups.first?.items {
                self.venues = venuesResponse.map { $0.venue }
            }
        } catch {
            throw NetworkError.CannotParseResponse
        }
    }
}
