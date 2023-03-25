//
//  MainTable+Delegates.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

// MARK: - TableView

extension MainViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.numberOfItems()
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: MainTableViewCell.id, for: indexPath) as? MainTableViewCell else {
            fatalError("Could not cast MainTableViewCell")
        }

        cell.setup(item: viewModel.item(at: indexPath))
        return cell
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = viewModel.item(at: indexPath)

        switch item.type {
        case .basic:
            context?.initialize(coordinator: BasicComponentsCoordinator(context: context!))
        case .stackView:
            context?.initialize(coordinator: LoginCoordinator(context: context!))
        default:
            context?.initialize(coordinator: ScrollViewCoordinator(context: context!))
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
}

// MARK: - CollectionView

extension MainViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TypeCollectionViewCell.id, for: indexPath) as? TypeCollectionViewCell else {
            fatalError("Could not cast TypeCollectionViewCell")
        }

        cell.setup(title: "Type \(Int.random(in: 1 ..< 10))")
        cell.delegate = self
        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 60, height: 35)
    }
}

// MARK: - Delegates

extension MainViewController: MainTableDelegate {
    func didTypeSelected(type: String) {
        // Create the alert controller
        let alertController = UIAlertController(title: "Protocol", message: type, preferredStyle: .alert)

        // Create the actions
        let okAction = UIAlertAction(title: "OK", style: .default)
        alertController.addAction(okAction)

        // Present the controller
        present(alertController, animated: true, completion: nil)
    }
}
