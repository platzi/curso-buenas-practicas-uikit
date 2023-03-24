//
//  UITextField+Extensions.swift
//  UIKit iOS Platzi
//
//  Created by René Sandoval on 23/03/23.
//

import UIKit

extension UITextField {
    func getTextfield(placeholder: String, textColor: UIColor = .systemGreen, alignment: NSTextAlignment = .left, font: UIFont = .systemFont(ofSize: 14, weight: .thin), isSecureTextEntry: Bool = false, borderColor: UIColor = UIColor.systemGreen) -> UITextField {
        let textfield = UITextField()
        textfield.placeholder = placeholder
        textfield.autocorrectionType = .no
        textfield.textColor = textColor
        textfield.textAlignment = alignment
        textfield.layer.borderWidth = 1.0
        textfield.layer.borderColor = borderColor.cgColor
        textfield.isSecureTextEntry = isSecureTextEntry
        textfield.leftView = UIView(frame: CGRect(x: 0, y: 0, width: 10, height: textfield.frame.height))
        textfield.leftViewMode = .always
        return textfield
    }
}
