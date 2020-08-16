//
//  Router.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Foundation

protocol Router {
    static var rootURL: String? { get }
    static var name: String? { get }
    static var apiVersion: String? { get }
}

extension Router {
    static var apiVersion: String? {
        return nil
    }

    static var name: String? {
        return nil
    }

    static var rootURL: String? {
        return NearByAppNetworking.baseURI ?? nil
    }

    static func generateURL(_ components: String...) -> URL {
        let urlString = URLStringGenerator.resource(name, root: rootURL ?? "", apiVersion: apiVersion)(components)
        return URL(string: urlString)!
    }
}
