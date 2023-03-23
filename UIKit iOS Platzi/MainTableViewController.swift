//
//  MainTableViewController.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 22/03/23.
//

import UIKit

class MainTableViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, UICollectionViewDelegate, UICollectionViewDataSource {
    private let titleTable: UILabel = UILabel()
    private var typeCollectionView: UICollectionView!
    private let tableView: UITableView = UITableView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white

        setupView()
        setupLayout()
    }

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
        
    }

    private func setupLayout() {
        view.addSubview(titleTable)
        view.addSubview(tableView)

        NSLayoutConstraint.activate([
            titleTable.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24),
            titleTable.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 24),
            titleTable.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24),
            titleTable.heightAnchor.constraint(equalToConstant: 40),

            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.topAnchor.constraint(equalTo: titleTable.bottomAnchor, constant: 12),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.id, for: indexPath) as? MainTableViewCell else {
            fatalError("Could not cast MainTableViewCell")
        }

        cell.setup(name: "Nombre", image: UIImage(named: "platziSpace")!)
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
    }
}
