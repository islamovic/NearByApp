//
//  NearByPlacesViewController.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

import UIKit

protocol NearByPlacesSceneDisplayView: class {

    func displayVenues(viewModel: NearByPlacesScene.Search.ViewModel)
}

class NearByPlacesViewController: UIViewController {

    var interactor: NearByPlacesSceneBusinessLogic!
    var dataStore: NearByPlacesSceneDataStore!
    var router: NearByPlacesSceneRoutingLogic!

    override func viewDidLoad() {
        super.viewDidLoad()

        interactor.fetchNearByVenues()
    }

    @IBAction func realtimeButtonTapped(_ sender: UIBarButtonItem) {
        
    }
}

extension NearByPlacesViewController: NearByPlacesSceneDisplayView {

    func displayVenues(viewModel: NearByPlacesScene.Search.ViewModel) {
        
    }
}
