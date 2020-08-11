//
//  NearByPlacesSceneInteractor.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

protocol NearByPlacesSceneBusinessLogic: class {

}

protocol NearByPlacesSceneDataStore: class {

}

class NearByPlacesSceneInteractor: NearByPlacesSceneBusinessLogic, NearByPlacesSceneDataStore {

    // MARK: Stored Properties
    let presenter: NearByPlacesScenePresentationLogic

    // MARK: Initializers
    required init(presenter: NearByPlacesScenePresentationLogic) {
        self.presenter = presenter
    }
}

extension NearByPlacesSceneInteractor {

}
