//
//  MainButton.swift
//  Tours
//
//  Created by Евгений Уланов on 07.03.2022.
//

import UIKit

public class MainButton: UIView {
    private let button = UIButton().prepareForAutoLayout()

    private func addSubviews() {
        addSubview(button)
        button.leadingAnchor ~= leadingAnchor + 12
        button.trailingAnchor ~= trailingAnchor - 12
        button.bottomAnchor ~= bottomAnchor - 22
        button.topAnchor ~= topAnchor + 22
        button.heightAnchor ~= 42
    }

    public var didTapAction: (() -> Void)?
    public var isSelected: Bool = true {
        didSet {
            button.backgroundColor = isSelected ? Colors.mainColor.rawValue : Colors.grayColor.rawValue
        }
    }
    public var text: String? {
        get {
            button.title(for: .normal)
        }
        set {
            button.setTitle(newValue, for: .normal)
        }
    }

    private func configureUI() {
        button.backgroundColor = Colors.mainColor.rawValue
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
    }

    @objc private func didTapButton() {
        didTapAction?()
    }
}
