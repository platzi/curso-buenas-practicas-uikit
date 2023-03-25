//
//  AppDelegate.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 21/03/23.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    var context: Context?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController()

        context = Context(with: window?.rootViewController as! UINavigationController)
        context?.initialize(coordinator: AppCoordinator(context: context!))
        window?.makeKeyAndVisible()
        return true
    }
}
