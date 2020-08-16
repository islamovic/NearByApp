//
//  NetworkClient.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

protocol NetworkClient {
    func request<V>(_ request: Request<V>, completion: @escaping (Result<V, NetworkError>) -> Void)
}
