//
//  MainTableViewCell.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 22/03/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    static let id = "MainTableViewCell"

    var logoImage: UIImageView = UIImageView()
    var titleLabel: UILabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        logoImage.contentMode = .scaleAspectFit

        titleLabel.textColor = .systemGreen
        titleLabel.font = .systemFont(ofSize: 16, weight: .regular)

        [logoImage, titleLabel].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        NSLayoutConstraint.activate([
            logoImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            logoImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            logoImage.widthAnchor.constraint(equalToConstant: 60),
            logoImage.heightAnchor.constraint(equalToConstant: 60),

            titleLabel.centerYAnchor.constraint(equalTo: logoImage.centerYAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: logoImage.trailingAnchor, constant: 10),
            titleLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            titleLabel.heightAnchor.constraint(equalToConstant: 30),
        ])
    }

    func setup(item: Item) {
        logoImage.image = item.image
        titleLabel.text = item.title
    }
}
