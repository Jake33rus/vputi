//
//  UIColor + Extension.swift
//  Tours
//
//  Created by Евгений Уланов on 07.03.2022.
//

import UIKit

public enum Colors {
    case mainColor
    case grayColor
    case greenColor
    case blueColor
}

extension Colors: RawRepresentable {
    public typealias RawValue = UIColor

    public init?(rawValue: RawValue) {
        switch rawValue {
        case #colorLiteral(red: 0.2156862745, green: 0.2078431373, blue: 0.7607843137, alpha: 1): self = .mainColor
        case #colorLiteral(red: 0.8745098039, green: 0.8745098039, blue: 0.8745098039, alpha: 1): self = .grayColor
        case #colorLiteral(red: 0.3137254902, green: 0.8196078431, blue: 0.5764705882, alpha: 1): self = .greenColor
        case #colorLiteral(red: 0, green: 0.4588235294, blue: 1, alpha: 1): self = .blueColor
        default: return nil
        }
    }

    public var rawValue: RawValue {
        switch self {
        case .mainColor: return #colorLiteral(red: 0.2156862745, green: 0.2078431373, blue: 0.7607843137, alpha: 1)
        case .grayColor: return #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        case .greenColor: return #colorLiteral(red: 0.3137254902, green: 0.8196078431, blue: 0.5764705882, alpha: 1)
        case .blueColor: return #colorLiteral(red: 0, green: 0.4588235294, blue: 1, alpha: 1)
        }
    }
}
