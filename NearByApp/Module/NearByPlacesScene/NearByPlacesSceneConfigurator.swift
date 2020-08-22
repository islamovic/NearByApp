//
//  NearByPlacesSceneConfigurator.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

class NearByPlacesSceneConfigurator {

    static func configure() -> NearByPlacesViewController {
        let viewController = NearByPlacesViewController()
        let presenter = NearByPlacesScenePresenter(displayView: viewController)
        let interactor = NearByPlacesSceneInteractor(presenter: presenter)
        let router = NearByPlacesSceneRouter()
        viewController.interactor = interactor
        viewController.dataStore = interactor
        viewController.router = router
        viewController.viewStore = presenter
        return viewController
    }
}
