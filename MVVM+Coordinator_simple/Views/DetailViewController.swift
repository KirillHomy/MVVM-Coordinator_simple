//
//  DetailViewController.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

class DetailViewController: UIViewController, Storyboardable {

    // MARK: - General variables
    weak var coordinator: AppCoordinator?
    var viewModel: DetailViewModel?

    // MARK: - Private IBAction
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var cityLabel: UILabel!
    @IBOutlet private weak var emailLabel: UILabel!
    @IBOutlet private weak var phoneLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

}

// MARK: - Name
private extension DetailViewController {

    func setupUI() {
        setupLabels()
    }

    func setupLabels() {
        guard let model = viewModel?.model else { return }
        nameLabel.text = model.name
        cityLabel.text = model.city
        emailLabel.text = model.email
        phoneLabel.text = model.phone
    }
}
