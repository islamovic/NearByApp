//
//  NetworkService.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Alamofire

public class NetworkService: NSObject {
    // MARK: Stored Properties
    let client: NetworkClient

    // MARK: Initializers
    init(client: NetworkClient) {
        self.client = client
    }

    public static let sharedManager: Session = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 10
        let manager = Session(configuration: configuration)
        return manager
    }()

    public override init() {
        client = NetworkService.sharedManager
        super.init()
    }
}
