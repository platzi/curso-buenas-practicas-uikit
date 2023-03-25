//
//  LoginViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

class LoginViewController: UIViewController {
    private var stackView: UIStackView!
    private var logoImage: UIImageView!
    private var userTextfield: UITextField!
    private var passwordTextfield: UITextField!
    private var loginButton: UIButton!

    // MARK: - Properties

    weak var coordinator: Coordinator?
    weak var context: Context?
    var viewModel: LoginViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupView()
        setupLayout()
    }

    private func setupView() {
        logoImage = UIImageView(image: viewModel.getLogoImage())
        logoImage.translatesAutoresizingMaskIntoConstraints = false
        logoImage.contentMode = .scaleAspectFit

        userTextfield = UITextField().getTextfield(placeholder: viewModel.getUserPlaceholder())
        userTextfield.translatesAutoresizingMaskIntoConstraints = false

        passwordTextfield = UITextField().getTextfield(placeholder: viewModel.getPasswordPlaceholder(), isSecureTextEntry: true)
        passwordTextfield.translatesAutoresizingMaskIntoConstraints = false

        loginButton = UIButton(type: .system)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        loginButton.setTitle(viewModel.getTitleButton(), for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.backgroundColor = .systemGreen
        loginButton.addTarget(self, action: #selector(goMainView), for: .touchUpInside)

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
    
    @objc func goMainView() {
        context?.initialize(coordinator: MainViewCoordinator(context: context!))
    }
}
