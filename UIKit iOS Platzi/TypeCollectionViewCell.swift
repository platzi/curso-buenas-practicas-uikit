//
//  TypeCollectionViewCell.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

class TypeCollectionViewCell: UICollectionViewCell {
    static let id = "TypeCollectionViewCell"

    lazy var typeLabel: UILabel = UILabel()

    override var isSelected: Bool {
        didSet {
            contentView.backgroundColor = isSelected ? .systemGreen : .white
            typeLabel.textColor = isSelected ? .white : .systemGreen
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)

        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 12
        contentView.backgroundColor = .white

        typeLabel.textColor = .systemGreen
        typeLabel.textAlignment = .center

        setupLayout()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func setupLayout() {
        typeLabel.translatesAutoresizingMaskIntoConstraints = false

        contentView.addSubview(typeLabel)
        NSLayoutConstraint.activate([
            typeLabel.centerXAnchor.constraint(equalTo: contentView.centerXAnchor),
            typeLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            typeLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

    func setup(title: String) {
        typeLabel.text = title
    }
}
