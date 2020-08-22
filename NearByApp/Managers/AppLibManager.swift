//
//  AppLibManager.swift
//  NearByApp
//
//  Created by Islam on 8/22/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import UIKit

enum AppLibManager {

    static func setupLibraries(application: UIApplication, launchOptions: [UIApplication.LaunchOptionsKey: Any]?) {
        setupNetworking()
    }
}

private extension AppLibManager {

    static func setupNetworking() {
        guard let baseURL = Constants.Server.baseURL else { return }
        let apiVersion = Constants.Server.apiVersion

        NearByAppNetworking.set(baseURI: baseURL, apiVersion: apiVersion)
    }
}
