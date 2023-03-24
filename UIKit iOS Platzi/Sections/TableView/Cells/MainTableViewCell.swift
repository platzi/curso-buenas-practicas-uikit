//
//  MainTableViewCell.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 22/03/23.
//

import UIKit

class MainTableViewCell: UITableViewCell {
    static let id = "MainTableViewCellId"

    var contactImage: UIImageView = UIImageView()
    var contactLabel: UILabel = UILabel()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        selectionStyle = .none
        backgroundColor = .clear
        contentView.backgroundColor = .white
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupView() {
        contactImage.contentMode = .scaleAspectFit

        contactLabel.textColor = .systemGreen
        contactLabel.font = .systemFont(ofSize: 16, weight: .regular)

        [contactImage, contactLabel].forEach {
            contentView.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
        }

        NSLayoutConstraint.activate([
            contactImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 10),
            contactImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            contactImage.widthAnchor.constraint(equalToConstant: 60),
            contactImage.heightAnchor.constraint(equalToConstant: 60),

            contactLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor, constant: 9),
            contactLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -10),
            contactLabel.widthAnchor.constraint(equalToConstant: 100),
            contactLabel.heightAnchor.constraint(equalToConstant: 40),
        ])
    }

    func setup(name: String, image: UIImage) {
        contactImage.image = image
        contactImage.layer.cornerRadius = 30
        contactImage.clipsToBounds = true
        
        contactLabel.text = name
    }
}
