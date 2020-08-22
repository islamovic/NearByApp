//
//  Environment.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 Spaces. All rights reserved.
//

import Foundation

public enum Environment: String {
    case
    debug,
    release

    public static var current: Environment? {
        guard let infoDictionary = Bundle.main.infoDictionary else {
            return nil
        }

        guard let environment = infoDictionary["Configuration"] as? String else {
            return nil
        }

        return Environment(rawValue: environment.lowercased())
    }
}
