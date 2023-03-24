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

        userTextfield = UITextField().getTextfield(placeholder: "User")
        userTextfield.translatesAutoresizingMaskIntoConstraints = false

        passwordTextfield = UITextField().getTextfield(placeholder: "Password", isSecureTextEntry: true)
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false

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

        [userTextfield, passwordTextfield, loginButton].forEach { $0?.heightAnchor(equalTo: 50) }

        stackView.topAnchor(equalTo: view.safeAreaLayoutGuide.topAnchor)
        stackView.centerXAnchor(equalTo: view.centerXAnchor)
        stackView.widthAnchor(equalTo: view.bounds.width - 40)
    }
}
