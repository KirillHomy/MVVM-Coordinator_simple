//
//  UserData.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import Foundation

struct UserData {
    let name: String?
    let city: String?
    let email: String?
    let phone: String?
}

extension UserData {
    static var userData = UserData(name: "Kirll",
                                   city: "Bucha",
                                   email: "test@test.com",
                                   phone: "+380")
}
