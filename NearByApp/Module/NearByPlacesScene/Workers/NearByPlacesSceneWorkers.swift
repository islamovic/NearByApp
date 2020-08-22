//
//  NearByPlacesSceneWorkers.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

class NearByPlacesSceneWorkers {

    let venueNetworkService = VenueNetworkService()

    func searchVenues(lat: Double, lng: Double,
                      completion: @escaping(Result<Venue.Search.Output, NetworkError>) -> Void) {

        let input = Venue.Search.Input(latitude: lat, longitude: lng, venuePhoto: true)
        venueNetworkService.search(input) { (result) in

            var response: Result<Venue.Search.Output, NetworkError>
            defer { completion(response) }

            guard result.isSuccess else {
                response = .error(result.error!)
                return
            }
            response = .success(result.value!)
        }
    }
}
