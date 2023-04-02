//
//  ViewController.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

final class LoginViewController: UIViewController, Storyboardable {

    // MARK: - General variables
    var viewModel: LoginViewModel?
    var coordinator: AppCoordinator?

    // MARK: - Private IBOutlet
    @IBOutlet private weak var loginScreenLabel: UILabel!
    @IBOutlet private weak var loginLabel: UILabel!
    @IBOutlet private weak var loginTextField: UITextField!
    @IBOutlet private weak var passwordLabel: UILabel!
    @IBOutlet private weak var passwordTextField: UITextField!
    @IBOutlet private weak var logInButton: UIButton!
    @IBOutlet private weak var responseLabel: UILabel!

    // MARK: - Life cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }

    // MARK: - Private IBAction
    @IBAction private func logInAction(_ sender: Any) {
        setupLogInAction()
    }
}

// MARK: - private extension
private extension LoginViewController {

    func setupUI() {
        bindViewModel()
        setupInitialResponseLabel()
    }

    func bindViewModel() {
        guard let viewModel = viewModel else { return }
        viewModel.statusText.bind { statusText in
            DispatchQueue.main.async {
                self.responseLabel.text = statusText
            }
        }

        viewModel.statusColor.bind { statusColor in
            DispatchQueue.main.async {
                self.responseLabel.textColor = statusColor
            }
        }
    }

    func setupInitialResponseLabel() {
        responseLabel.textColor = .clear
    }

    // MARK: - IBAction Method
    func setupLogInAction() {
        guard let loginText = loginTextField.text,
              let passwordText = passwordTextField.text,
              let viewModel = viewModel else { return }
        viewModel.userButtonPressed(login: loginText, password: passwordText)
    }

}
