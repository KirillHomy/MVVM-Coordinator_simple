//
//  AppDelegate.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var coordinator: AppCoordinator?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        let navigationController = UINavigationController()
        coordinator = AppCoordinator(navigationController: navigationController)
        coordinator?.start()
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()

        return true
    }

}
