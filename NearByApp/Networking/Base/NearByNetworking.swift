//
//  NearByApp.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Foundation

public class NearByAppNetworking: NSObject {
    // MARK: Stored Properties
    private var baseURI: String?
    private var apiVersion: String?

    private static let shared: NearByAppNetworking = {
        return NearByAppNetworking()
    }()

    // MARK: Computed Properties
    public static var baseURI: String? {
        get {
            return shared.baseURI ?? nil
        }
        set {
            shared.baseURI = newValue
        }
    }

    public static var apiVersion: String? {
        get {
            return shared.apiVersion ?? nil
        }
        set {
            shared.apiVersion = newValue
        }
    }

    // MARK: Functions
    public static func set(baseURI url: String,
                           apiVersion: String) {
        self.baseURI = url
        self.apiVersion = apiVersion
    }
}
