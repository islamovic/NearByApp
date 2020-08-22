//
//  NearByPlacesViewController.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright (c) 2020 AppLineup. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

protocol NearByPlacesSceneDisplayView: class {

    func displayVenues(viewModel: NearByPlacesScene.Search.ViewModel)
}

class NearByPlacesViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    var activityIndicator: NVActivityIndicatorView!

    var interactor: NearByPlacesSceneBusinessLogic!
    var dataStore: NearByPlacesSceneDataStore!
    var router: NearByPlacesSceneRoutingLogic!
    var viewStore: NearByPlacesSceneViewStore!

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        interactor.fetchNearByVenues()
    }

    @IBAction func realtimeButtonTapped(_ sender: UIBarButtonItem) {
        
    }
}

extension NearByPlacesViewController: NearByPlacesSceneDisplayView {

    func displayVenues(viewModel: NearByPlacesScene.Search.ViewModel) {
        self.activityIndicator.stopAnimating()
        viewStore.venues = viewModel.venues
        tableView.reloadData()
    }
}

extension NearByPlacesViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewStore.venues.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: VenueCell = tableView.dequeueReusableCell(indexPath: indexPath)
        cell.configure(venue: viewStore.venues[indexPath.row])
        return cell
    }
}

private extension NearByPlacesViewController {

    func updateUI() {
        tableView.register(VenueCell.self)
        tableView.dataSource = self
        tableView.tableFooterView = UIView(frame: .zero)

        self.activityIndicator = NVActivityIndicatorView(frame: CGRect(x: (self.view.frame.size.width / 2) - 50,
                                                                      y: (self.view.frame.size.height / 2) - 150,
                                                                      width: 50, height: 50),
                                                         type: .circleStrokeSpin,
                                                         color: .black)
        self.view.addSubview(activityIndicator)
        self.activityIndicator.startAnimating()
    }
}
