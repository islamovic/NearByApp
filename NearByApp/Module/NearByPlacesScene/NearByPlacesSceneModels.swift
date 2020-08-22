//
//  NearByPlacesSceneModels.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

enum NearByPlacesScene {
    enum Search { }
}

extension NearByPlacesScene.Search {

    struct VenueViewModel {
        let name: String
        let address: String
    }

    struct ViewModel {
        var venues: [VenueViewModel]
    }
}
