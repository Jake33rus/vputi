//
//  UIView+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 07.03.2022.
//

import UIKit

extension UIView {
    public func roundCorners(_ cornerRadius: CGFloat) {
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self.layer.masksToBounds = true
    }

    public func addViewShadow() {
        DispatchQueue.main.asyncAfter(deadline: (.now() + 0.2)) {
            let shadowLayer = CAShapeLayer()
            shadowLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 4).cgPath
            shadowLayer.fillColor = UIColor.white.cgColor

            shadowLayer.shadowColor = UIColor.lightGray.cgColor
            shadowLayer.shadowPath = shadowLayer.path
            shadowLayer.shadowOffset = CGSize(width: 2.6, height: 2.6)
            shadowLayer.shadowOpacity = 0.8
            shadowLayer.shadowRadius = 8.0
            self.layer.insertSublayer(shadowLayer, at: 0)
        }
    }

    func roundCorners(_ corners: UIRectCorner, radius: Double) {
        let maskPath = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let shape = CAShapeLayer()
        shape.path = maskPath.cgPath
        layer.mask = shape
    }
}
