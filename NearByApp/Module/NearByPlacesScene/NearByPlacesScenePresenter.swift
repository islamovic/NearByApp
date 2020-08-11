//
//  NearByPlacesScenePresenter.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

protocol NearByPlacesScenePresentationLogic: class {

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

}
