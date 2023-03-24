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

        scrollView.leadingAnchor(equalTo: view.leadingAnchor)
        scrollView.topAnchor(equalTo: view.safeTopAnchor)
        scrollView.trailingAnchor(equalTo: view.trailingAnchor)
        scrollView.bottomAnchor(equalTo: view.safeBottomAnchor)

        stackView.leadingAnchor(equalTo: scrollView.leadingAnchor)
        stackView.topAnchor(equalTo: scrollView.topAnchor)
        stackView.trailingAnchor(equalTo: scrollView.trailingAnchor)
        stackView.bottomAnchor(equalTo: scrollView.bottomAnchor)
        stackView.widthAnchor(equalTo: scrollView.widthAnchor)

        [container1, container2, container3].forEach(stackView.addArrangedSubview)

        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.container2.isHidden = true

            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.container2.isHidden = false
            }
        }
    }
}
