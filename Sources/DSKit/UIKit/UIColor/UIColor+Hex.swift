//
//  UIColor+Hex.swift
//  DSKit
//
//  Created by David Chavez on 11.01.22.
//

import UIKit

public extension UIColor {
    convenience init?(hex: String) {
        guard let (r, g, b, a) = hexToRGB(hex: hex) else {
            return nil
        }
        self.init(red: r, green: g, blue: b, alpha: a)
    }

    var hex: String {
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0

        getRed(&red, green: &green, blue: &blue, alpha: nil)

        let rgb: Int = (Int)(red*255)<<16 | (Int)(green*255)<<8 | (Int)(blue*255)<<0

        return String(format: "#%06x", rgb)
    }
}
