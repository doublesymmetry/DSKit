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
        guard let components = cgColor.components, components.count >= 3 else {
            return ""
        }
        
        let red = Int(components[0] * 255)
        let green = Int(components[1] * 255)
        let blue = Int(components[2] * 255)
        
        return String(format: "#%02X%02X%02X", red, green, blue)
    }
}
