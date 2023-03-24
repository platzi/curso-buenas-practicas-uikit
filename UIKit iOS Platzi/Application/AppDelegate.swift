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
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = MainTableViewController()
        window?.makeKeyAndVisible()
        
        return true
    }
}
