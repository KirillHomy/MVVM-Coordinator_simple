//
//  User.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import Foundation

struct User {
    let login: String?
    let password: String?
}

extension User {
    static var logins = [
    User(login: "Kirill", password: "321")
    ]
}
