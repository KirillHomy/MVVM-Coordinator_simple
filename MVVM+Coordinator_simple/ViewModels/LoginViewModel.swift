//
//  ViewModel.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import Foundation
import UIKit.UIColor

class LoginViewModel {
    var statusText = Dynamic("")
    var statusColor = Dynamic(UIColor.white)
    var isLoggedIn = false

    func userButtonPressed(login: String, password: String) {
        if login != User.logins[0].login || password != User.logins[0].password {
            statusText.value = "Login failed"
            statusColor.value = UIColor.red
        } else {
            statusText.value = "Login successful"
            statusColor.value = UIColor.green
        }
    }
}
