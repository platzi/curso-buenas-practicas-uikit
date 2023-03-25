//
//  Context.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 24/03/23.
//

import UIKit

class Context {
    weak var coordinator: Coordinator?
    var navigationController: UINavigationController

    init(with navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func initialize(coordinator: Coordinator) {
        self.coordinator = coordinator
        coordinator.start()
    }

    func push(viewController: UIViewController) {
        navigationController.pushViewController(viewController, animated: true)
    }
}
