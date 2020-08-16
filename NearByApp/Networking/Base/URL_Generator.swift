//
//  URL_Generator.swift
//  NearByApp
//
//  Created by Islam on 8/15/20.
//  Copyright © 2020 NearByApp. All rights reserved.
//

enum URLStringGenerator {
    static private func generatePath(for resource: String?, root: String, apiVersion: String?) -> String {
        var url = root

        if let apiVersion = apiVersion {
            url += "/" + apiVersion
        }

        if let resource = resource {
            url += "/" + resource
        }

        return url
    }

    static func resource(_ resource: String?, root: String, apiVersion: String?) -> ([String]) -> String {
        return { (components: [String]) in
            var uri = generatePath(for: resource, root: root, apiVersion: apiVersion)

            if !components.isEmpty {
                uri += "/" + components.joined(separator: "/")
            }

            return uri
        }
    }
}
