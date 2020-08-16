//
//  Wrapping.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

import Foundation

protocol Wrap {
    func wrap() -> [String: Any]
}

protocol Unwrapping {
    init(dataObject: Data?) throws
}
