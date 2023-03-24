//
//  StackViewWithScrollViewViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

class StackViewWithScrollViewViewController: UIViewController {
    
    private let scrollView: UIScrollView = {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        return scrollView
    }()
    
    private let stackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.spacing = 0
        return stackView
    }()
    
    private let container1: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGreen
        view.heightAnchor.constraint(equalToConstant: 300).isActive = true
        return view
    }()
    
    private let container2: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemGray
        view.heightAnchor.constraint(equalToConstant: 800).isActive = true
        return view
    }()
    
    private let container3: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        view.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        setupView()
    }
    
    private func setupView() {
        view.addSubview(scrollView)
        scrollView.addSubview(stackView)
        
        NSLayoutConstraint.activate([
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
            stackView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            stackView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            stackView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            stackView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        ])
        
        
        stackView.addArrangedSubview(container1)
        stackView.addArrangedSubview(container2)
        stackView.addArrangedSubview(container3)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.container2.isHidden = true
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.container2.isHidden = false
            }
        }
    }
}
