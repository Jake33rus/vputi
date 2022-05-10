//
//  Numeric+Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 06.03.2022.
//

import UIKit

extension Numeric {
    var formattedWithSeparator: String {
        let formatter = NumberFormatter()
        formatter.groupingSeparator = " "
        formatter.numberStyle = .decimal
        return formatter.string(for: self) ?? String(describing: self)
    }
}

