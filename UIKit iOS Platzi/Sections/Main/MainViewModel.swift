//
//  MainViewModel.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 24/03/23.
//

import UIKit

import Foundation
import UIKit

class MainViewModel {
    private var items: [Item] = []

    func getTitle() -> String {
        return LocalizableStrings.main.title
    }

    func numberOfItems() -> Int {
        return items.count
    }

    func item(at indexPath: IndexPath) -> Item {
        return items[indexPath.row]
    }

    func loadItems(completion: @escaping () -> Void) {
        items = [
            Item(title: "Basic components", image: UIImage(named: "search")!, type: .basic),
            Item(title: "StackView", image: UIImage(named: "settings")!, type: .stackView),
            Item(title: "ScrollView", image: UIImage(named: "touchId")!, type: .stackScrollView),
        ]

        completion()
    }
}
