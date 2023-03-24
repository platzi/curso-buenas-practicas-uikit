//
//  StackViewViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

class StackViewViewController: UIViewController {
    
    private var stackView: UIStackView!
    private var logoImage: UIImageView!
    private var userTextfield: UITextField!
    private var passwordTextfield: UITextField!
    private var loginButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
        setupLayout()
    }
    
    private func setupView() {
        logoImage = UIImageView(image: UIImage(named: "platziSpace")!)
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.contentMode = .scaleAspectFit
        
        userTextfield = UITextField()
        userTextfield.translatesAutoresizingMaskIntoConstraints = false
        userTextfield.placeholder = "User"
        userTextfield.autocorrectionType = .no
        userTextfield.textColor = .systemGreen
        userTextfield.layer.borderWidth = 1.0
        userTextfield.layer.borderColor = UIColor.systemGreen.cgColor
        userTextfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: userTextfield.frame.height))
        userTextfield.leftViewMode = .always
        
        passwordTextfield = UITextField()
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false
        passwordTextfield.placeholder = "Password"
        passwordTextfield.autocorrectionType = .no
        passwordTextfield.textColor = .systemGreen
        passwordTextfield.layer.borderWidth = 1.0
        passwordTextfield.layer.borderColor = UIColor.systemGreen.cgColor
        passwordTextfield.isSecureTextEntry = true
        passwordTextfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: passwordTextfield.frame.height))
        passwordTextfield.leftViewMode = .always
        
        loginButton = UIButton(type: .system)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .systemGreen
        
        stackView = UIStackView(arrangedSubviews: [logoImage, userTextfield, passwordTextfield, loginButton])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.spacing = 24
    }
    
    private func setupLayout() {
        view.addSubview(stackView)
        
        [userTextfield, passwordTextfield, loginButton].forEach {
            $0?.heightAnchor.constraint(equalToConstant: 50).isActive = true
        }
        
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.widthAnchor.constraint(equalToConstant: view.bounds.width - 40)
        ])
    }
}
