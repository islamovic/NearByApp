//
//  AppWindowManager.swift
//  NearByApp
//
//  Created by Islam on 8/10/20.
//  Copyright © 2020 AppLineup. All rights reserved.
//

import UIKit

struct AppWindowManager {

    static func setupWindow(_ window: UIWindow? = nil) {
        guard let window = window else { return }
        AppWindowManager.window = window
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
    }

    static func setupWindow(_ rootController: UIViewController? = nil) {

        let window = self.window ?? UIWindow.init(frame: windowFrame)
        AppWindowManager.window = window
        window.rootViewController = rootController ?? rootViewController
        window.makeKeyAndVisible()
    }
}

private extension AppWindowManager {
    static var window: UIWindow? {
        get {
            return (UIApplication.shared.delegate as? AppDelegate)?.window
        }
        set {
            (UIApplication.shared.delegate as? AppDelegate)?.window = newValue
        }
    }

    static var windowFrame: CGRect {
        return UIScreen.main.bounds
    }

    static var rootViewController: UIViewController {
        return NearByPlacesSceneConfigurator.configure()
    }
}
