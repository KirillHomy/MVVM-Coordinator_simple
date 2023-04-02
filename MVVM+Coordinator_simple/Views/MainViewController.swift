//
//  MainViewController.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

class MainViewController: UIViewController, Storyboardable {

    // MARK: - General variables
    weak var coordinator: AppCoordinator?
    var viewModel: MainViewModel?

    // MARK: - Private IBOutlet
    @IBOutlet private weak var titleLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: - Private IBAction
    @IBAction private func aboutYouAction(_ sender: Any) {
        aboutYouAction()
    }

}

// MARK: - Private extension
private extension MainViewController {

    func setupUI() {
        setupTitleLabelUI()
    }

    func setupTitleLabelUI() {
        guard let login = viewModel?.login else { return }
        titleLabel.text = "Hello \(login)"
    }

    // MARK: - Button Method 
    func aboutYouAction() {
        coordinator?.showDetail()
    }

}
