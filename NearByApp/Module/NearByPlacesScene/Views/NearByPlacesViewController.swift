//
//  NearByPlacesViewController.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

import UIKit

protocol NearByPlacesSceneDisplayView: class {

}

class NearByPlacesViewController: UIViewController {

    var interactor: NearByPlacesSceneBusinessLogic!
    var dataStore: NearByPlacesSceneDataStore!
    var router: NearByPlacesSceneRoutingLogic!

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func realtimeButtonTapped(_ sender: UIBarButtonItem) {
        
    }
}

extension NearByPlacesViewController: NearByPlacesSceneDisplayView {

}
