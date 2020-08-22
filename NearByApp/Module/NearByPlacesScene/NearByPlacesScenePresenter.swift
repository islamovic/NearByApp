//
//  NearByPlacesScenePresenter.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

protocol NearByPlacesScenePresentationLogic: class {

    func present(venues: [Venue])
}

class NearByPlacesScenePresenter: NearByPlacesScenePresentationLogic {

    // MARK: Stored Properties
    weak var displayView: NearByPlacesSceneDisplayView?

    // MARK: Initializers
    required init(displayView: NearByPlacesSceneDisplayView) {
        self.displayView = displayView
    }
}

extension NearByPlacesScenePresenter {

    func present(venues: [Venue]) {

        var venuesViewModel = [NearByPlacesScene.Search.VenueViewModel]()
        venues.forEach {
            let venueViewModel = NearByPlacesScene.Search.VenueViewModel(name: $0.name,
                                                                         search: $0.location.formattedAddress.first ?? "")
            venuesViewModel.append(venueViewModel)
        }

        let viewModel = NearByPlacesScene.Search.ViewModel(venues: venuesViewModel)
        displayView?.displayVenues(viewModel: viewModel)
    }
}
