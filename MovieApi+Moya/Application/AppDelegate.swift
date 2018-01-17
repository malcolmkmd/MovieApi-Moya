//
//  AppDelegate.swift
//  MovieApi+Moya
//
//  Created by Malcolm Kumwenda on 2018/01/16.
//  Copyright © 2018 mdevsa. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let provider = NetworkManager()
        let appStartVC = MainViewController(networkProvider: provider)
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.rootViewController = appStartVC
        self.window?.makeKeyAndVisible()
        return true
    }
}

