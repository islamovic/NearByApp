//
//  NearByPlacesSceneInteractor.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

protocol NearByPlacesSceneBusinessLogic: class {
    func fetchNearByVenues()
}

protocol NearByPlacesSceneDataStore: class {
    var latitude: Double { get set }

    var longitude: Double { get set }
}

class NearByPlacesSceneInteractor: NearByPlacesSceneBusinessLogic, NearByPlacesSceneDataStore {

    // MARK: Stored Properties
    let presenter: NearByPlacesScenePresentationLogic

    var latitude: Double = 40.7

    var longitude: Double = -74

    let nearByWorker = NearByPlacesSceneWorkers()

    // MARK: Initializers
    required init(presenter: NearByPlacesScenePresentationLogic) {
        self.presenter = presenter
    }
}

extension NearByPlacesSceneInteractor {

    func fetchNearByVenues() {

        nearByWorker.searchVenues(lat: self.latitude, lng: self.longitude) { (response) in
            if let result = response.value {
                self.presenter.present(venues: result.venues)
            }
        }
    }
}
