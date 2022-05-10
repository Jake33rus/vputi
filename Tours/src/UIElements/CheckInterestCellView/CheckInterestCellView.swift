//
//  CheckInterestCellView.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import UIKit

protocol ReusableView: AnyObject {
    static var identifier: String { get }
}

final class CheckInterestCellView: UICollectionViewCell {
    private let checkBox = CheckBox(frame: .zero).prepareForAutoLayout()
    private let label: UILabel = {
        let label = UILabel().prepareForAutoLayout()
        label.numberOfLines = 0
        return label
    }()

    override init(frame: CGRect) {
        super.init(frame: .zero)
        setupUI()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI() {
        backgroundColor = .white
        addSubview(checkBox)
        checkBox.leadingAnchor ~= leadingAnchor + 14
        checkBox.centerYAnchor ~= centerYAnchor
        addSubview(label)
        label.leadingAnchor ~= checkBox.trailingAnchor + 20
        label.centerYAnchor ~= centerYAnchor
        label.trailingAnchor ~= trailingAnchor - 14
        layer.cornerRadius = 8
        clipsToBounds = true
    }

    public var isChecked: Bool {
        get { return checkBox.isChecked }
        set { checkBox.isChecked = newValue }
    }

    func setup(with interest: String) {
        label.text = interest
    }
}

extension CheckInterestCellView: ReusableView {
    static var identifier: String {
        return String(describing: self)
    }
}
