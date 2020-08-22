//
//  Server.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 Spaces. All rights reserved.
//

extension Constants {
    public enum Server {
        public static var baseURL: String? {
            guard let environment = Constants.ENV else { return nil }

            switch environment {
            case .release:
                return "https://api.foursquare.com/v2"
            case .debug:
                return "https://api.foursquare.com/v2"
            }
        }

        public static var apiVersion: String {
            return "v2"
        }
    }
}
