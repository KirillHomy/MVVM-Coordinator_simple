//
//  AppCoordinator.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

class AppCoordinator: Coordinator {

    // MARK: - General variables
    var navigationController: UINavigationController
    var isLoggedIn = false

    // MARK: - Init
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    // MARK: -  General method
    func start() {
        if isLoggedIn {
            showMain()
        } else {
            showLoggin()
        }
    }

}

// MARK: - Private extension
private extension AppCoordinator {

    func showMain() {
        
    }

    func showLoggin() {
        let vc = LoginViewController.createObject()
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        vc.viewModel?.isLoggedIn = isLoggedIn
        navigationController.pushViewController(vc, animated: true)
    }
}
