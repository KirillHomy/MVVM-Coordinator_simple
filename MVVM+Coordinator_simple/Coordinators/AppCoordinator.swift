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
            guard let login = User.logins[0].login else { return }
            showMain(login: login)
        } else {
            showLoggin()
        }
    }

    func showMain(login: String) {
        let vc = MainViewController.createObject()
        let viewModel = MainViewModel()
        viewModel.login = login
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.viewControllers.removeAll()
        navigationController.pushViewController(vc, animated: true)
    }

    func showLoggin() {
        let vc = LoginViewController.createObject()
        vc.coordinator = self
        vc.viewModel = LoginViewModel()
        vc.viewModel?.isLoggedIn = isLoggedIn
        navigationController.pushViewController(vc, animated: true)
    }

    func showDetail() {
        let vc = DetailViewController.createObject()
        let viewModel = DetailViewModel()
        viewModel.model = UserData.userData
        vc.coordinator = self
        vc.viewModel = viewModel
        navigationController.pushViewController(vc, animated: true)
    }

}
