//
//  SessionManager.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Alamofire

extension Session: NetworkClient {
    func request<V>(_ request: Request<V>, completion: @escaping (Result<V, NetworkError>) -> Void) {

        self.request(request).validate().responseData { [weak self] response in
            guard let `self` = self else { return }

            var result: Result<V, NetworkError>
            defer { completion(result) }

            switch response.result {
            case .success(let value):
                guard let parsedResponse = request.parse(value) else {
                    result = .error(.CannotParseResponse)
                    return
                }

                result = .success(parsedResponse)
            case .failure:
                let networkError = NetworkError(dataResponse: response)
                result = .error(networkError)
            }
        }
    }
}
