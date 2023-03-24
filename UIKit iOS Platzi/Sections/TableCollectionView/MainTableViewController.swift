//
//  MainTableViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 22/03/23.
//

import UIKit

class MainTableViewController: UIViewController {
    private let titleTable: UILabel = UILabel()
    private var typeCollectionView: UICollectionView!
    private let tableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupView()
        setupLayout()
    }
}

// MARK: - Private methods

extension MainTableViewController {
    private func setupView() {
        /// Title label
        titleTable.translatesAutoresizingMaskIntoConstraints = false
        titleTable.text = "TableView"
        titleTable.textColor = .systemGreen
        titleTable.textAlignment = .center
        titleTable.font = .systemFont(ofSize: 24, weight: .bold)

        /// TableView
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(MainTableViewCell.self, forCellReuseIdentifier: MainTableViewCell.id)

        /// CollectionView
        let horizontalLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        horizontalLayout.scrollDirection = .horizontal

        typeCollectionView = UICollectionView(frame: .zero, collectionViewLayout: horizontalLayout)
        typeCollectionView.translatesAutoresizingMaskIntoConstraints = false
        typeCollectionView.delegate = self
        typeCollectionView.dataSource = self
        typeCollectionView.register(TypeCollectionViewCell.self, forCellWithReuseIdentifier: TypeCollectionViewCell.id)
    }

    private func setupLayout() {
        view.addSubview(titleTable)
        view.addSubview(tableView)
        view.addSubview(typeCollectionView)

        titleTable.leadingAnchor(equalTo: view.leadingAnchor, constant: 24)
        titleTable.topAnchor(equalTo: view.safeTopAnchor, constant: 24)
        titleTable.trailingAnchor(equalTo: view.trailingAnchor, constant: -24)
        titleTable.heightAnchor(equalTo: 40)

        typeCollectionView.leadingAnchor(equalTo: view.leadingAnchor)
        typeCollectionView.topAnchor(equalTo: titleTable.bottomAnchor, constant: 12)
        typeCollectionView.trailingAnchor(equalTo: view.trailingAnchor)
        typeCollectionView.heightAnchor(equalTo: 40)

        tableView.leadingAnchor(equalTo: view.leadingAnchor)
        tableView.topAnchor(equalTo: typeCollectionView.bottomAnchor, constant: 12)
        tableView.trailingAnchor(equalTo: view.trailingAnchor)
        tableView.bottomAnchor(equalTo: view.safeBottomAnchor)
    }
}
