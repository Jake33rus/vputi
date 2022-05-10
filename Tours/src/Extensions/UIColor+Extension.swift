//
//  UIColor+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import UIKit

extension UIColor {
    // MARK: - Helper Functions
    /// Returns the hex string for this `UIColor`. For example: `#FFFFFF` or `#222222AB` if the alpha value is included.
    ///
    /// - Parameter includeAlpha: A boolean indicating if the alpha value should be included in the returned hex string.
    ///
    /// - Returns: The hex string for this `UIColor`. For example: `#FFFFFF` or
    ///            `#222222AB` if the alpha value is included.
    ///
    func hexString(includeAlpha: Bool = false) -> String {
        let components = cgColor.components
        let red: CGFloat = components?[0] ?? 0.0
        let green: CGFloat = components?[1] ?? 0.0
        let blue: CGFloat = components?[2] ?? 0.0
        let alpha: CGFloat = components?[3] ?? 0.0
        let hexString = String.init(
            format: "#%02lX%02lX%02lX%02lX",
            lroundf(Float(red * 255)),
            lroundf(Float(green * 255)),
            lroundf(Float(blue * 255)),
            lroundf(Float(alpha * 255))
        )
        return includeAlpha ? hexString : String(hexString.dropLast(2))
    }
}

extension UIColor {
    convenience init?(hex: String) {
        var hexSanitized = hex.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let length = hexSanitized.count

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        if length == 6 {
            r = CGFloat((rgb & 0xFF0000) >> 16) / 255.0
            g = CGFloat((rgb & 0x00FF00) >> 8) / 255.0
            b = CGFloat(rgb & 0x0000FF) / 255.0

        } else if length == 8 {
            r = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
            g = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
            b = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
            a = CGFloat(rgb & 0x000000FF) / 255.0

        } else {
            return nil
        }

        self.init(red: r, green: g, blue: b, alpha: a)
    }
}
