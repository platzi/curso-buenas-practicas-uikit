//
//  ViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 21/03/23.
//

import UIKit

class ViewController: UIViewController {

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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(mainLabel)
        view.addSubview(mainButton)
        view.addSubview(mainSwitch)
        
        mainLabel.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainLabel.heightAnchor.constraint(equalToConstant: 40).isActive = true
        mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        
        mainButton.widthAnchor.constraint(equalToConstant: 100).isActive = true
        mainButton.heightAnchor.constraint(equalToConstant: 40).isActive = true
        mainButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 50).isActive = true
        
        mainSwitch.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        mainSwitch.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 100).isActive = true
    }
}
