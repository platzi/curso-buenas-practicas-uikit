//
//  AppCoordinator.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 24/03/23.
//

class AppCoordinator: Coordinator {
    var context: Context?

    init(context: Context) {
        self.context = context
    }

    func start() {
        let viewController = LoginViewController()
        viewController.viewModel = LoginViewModel()
        viewController.coordinator = self
        viewController.context = context
        context?.push(viewController: viewController)
    }
}
