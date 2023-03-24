//
//  UILabel+Extensions.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

extension UILabel {
    func getLabel(textColor: UIColor = .darkText, alignment: NSTextAlignment = .left, font: UIFont = .systemFont(ofSize: 14, weight: .thin)) -> UILabel {
        let label = UILabel()
        label.textAlignment = alignment
        label.numberOfLines = 0
        label.font = font
        label.textColor = textColor
        label.frame.size = label.intrinsicContentSize
        return label
    }
}
