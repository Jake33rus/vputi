//
//  CheckBox.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import UIKit

final class CheckBox: UIImageView {
    let checkedImage = UIImage(named: "check") as UIImage?
    let unCheckedImage = UIImage(named: "uncheck")as UIImage?

    override init(frame: CGRect) {
        super.init(frame: .zero)
        image = unCheckedImage
        layer.shadowRadius = 5
        addShadow()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    var isChecked: Bool = false {
        didSet{
            if isChecked == true {
                image = checkedImage
                
            } else {
                image = unCheckedImage
            }
            addShadow()
        }
    }

    func addShadow() {
        layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.15).cgColor
        layer.shadowOffset = .zero
        layer.shadowOpacity = 1
        if isChecked {
            layer.shadowOpacity = 0
        }
    }
}
