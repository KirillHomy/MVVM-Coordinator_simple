//
//  Storyboardable.swift
//  MVVM+Coordinator_simple
//
//  Created by Kirill Khomytsevych on 02.04.2023.
//

import UIKit

protocol Storyboardable {

   static func createObject() -> Self

}

extension Storyboardable {

    static func createObject() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}
