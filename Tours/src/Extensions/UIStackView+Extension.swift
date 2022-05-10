//
//  UIStackView+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import UIKit

// Extension #4 - Removes all views from a UIStackView.
extension UIStackView {
    /// Removes all arranged subviews and their constraints from the view.
    func removeAllArrangedSubviews() {
        arrangedSubviews.forEach {
            self.removeArrangedSubview($0)
            NSLayoutConstraint.deactivate($0.constraints)
            $0.removeFromSuperview()
        }
    }
}

extension UIStackView {

    /// `UIStackView` convenience initializer for creating a stack view with arranged subviews, an
    /// axis and spacing.
    ///
    /// - Parameters:
    ///   - alignment: The alignment of the arranged subviews perpendicular to the stack view’s
    ///                axis.
    ///   - arrangedSubviews: The subviews to arrange in the `UIStackView`.
    ///   - axis: The axis that the subviews should be arranged around.
    ///   - distribution: The distribution of the arranged views along the stack view’s axis.
    ///   - spacing: The spacing to place between each arranged subview. Defaults to 0.
    ///
    convenience init(alignment: UIStackView.Alignment = .fill,
                     arrangedSubviews: [UIView],
                     axis: NSLayoutConstraint.Axis,
                     distribution: UIStackView.Distribution = .fill,
                     spacing: CGFloat = 0) {
        arrangedSubviews.forEach { $0.translatesAutoresizingMaskIntoConstraints = false }
        self.init(arrangedSubviews: arrangedSubviews)
        self.alignment = alignment
        self.axis = axis
        self.distribution = distribution
        self.spacing = spacing
    }
}
