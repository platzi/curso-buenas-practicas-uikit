//
//  MainViewCoordinator.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 24/03/23.
//

class MainViewCoordinator: Coordinator {
    var context: Context?

    init(context: Context) {
        self.context = context
    }

    func start() {
        let viewController = MainViewController()
        viewController.viewModel = MainViewModel()
        viewController.coordinator = self
        viewController.context = context
        context?.push(viewController: viewController)
    }
}
