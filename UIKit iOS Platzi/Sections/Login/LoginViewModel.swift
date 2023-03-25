//
//  LoginViewModel.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 24/03/23.
//

import UIKit

class LoginViewModel {
    func getLogoImage() -> UIImage {
        return UIImage(named: "platziSpace")!
    }
    
    func getUserPlaceholder() -> String {
        return "User"
    }
    
    func getPasswordPlaceholder() -> String {
        return "Password"
    }
    
    func getTitleButton() -> String {
        return "Login"
    }
}
