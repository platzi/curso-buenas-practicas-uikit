//
//  BasicComponentsViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 21/03/23.
//

import UIKit

class BasicComponentsViewController: UIViewController {
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "My label"
        label.textColor = .systemGreen
        label.textAlignment = .center

        return label
    }()

    private let mainButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("My button", for: .normal)
        button.setTitleColor(.systemGreen, for: .normal)

        return button
    }()

    private let mainSwitch: UISwitch = {
        let mySwitch = UISwitch()
        mySwitch.translatesAutoresizingMaskIntoConstraints = false
        return mySwitch
    }()
    
    // MARK: - Properties

    weak var coordinator: Coordinator?
    weak var context: Context?
    //var viewModel: BasicComponentsViewModel!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        [mainLabel, mainButton, mainSwitch].forEach { view.addSubview($0) }

        mainLabel.widthAnchor(equalTo: 100)
        mainLabel.heightAnchor(equalTo: 40)
        mainLabel.centerXAnchor(equalTo: view.centerXAnchor)
        mainLabel.centerYAnchor(equalTo: view.centerYAnchor)

        mainButton.widthAnchor(equalTo: 100)
        mainButton.heightAnchor(equalTo: 40)
        mainButton.centerXAnchor(equalTo: view.centerXAnchor)
        mainButton.centerYAnchor(equalTo: view.centerYAnchor, constant: 50)

        mainSwitch.centerXAnchor(equalTo: view.centerXAnchor)
        mainSwitch.centerYAnchor(equalTo: view.centerYAnchor, constant: 100)
    }
}
