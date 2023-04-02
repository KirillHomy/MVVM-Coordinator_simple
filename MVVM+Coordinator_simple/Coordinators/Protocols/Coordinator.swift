//
//  Coordinator.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

protocol Coordinator {

    var navigationController: UINavigationController { get set }
    func start()

}
