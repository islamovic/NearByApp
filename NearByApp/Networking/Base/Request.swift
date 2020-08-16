//
//  Request.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Alamofire

struct Request<Output> {
    let url: URL
    let method: HTTPMethod
    let params: Parameters?
    var headers: Headers?
    let parse: (Data?) -> Output?

    init(url: URL,
         method: HTTPMethod = .get,
         params: Parameters? = nil,
         headers: Headers? = nil,
         parse: @escaping (Data?) -> Output?) {
        self.url = url
        self.method = method
        self.params = params
        self.parse = parse
    }
}

extension Request: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        urlRequest.cachePolicy = .reloadIgnoringCacheData

        if method == .get {
            urlRequest = try URLEncoding.default.encode(urlRequest, with: params)
            return urlRequest
        }

        urlRequest = try JSONEncoding.default.encode(urlRequest, with: params)
        return urlRequest
    }
}
