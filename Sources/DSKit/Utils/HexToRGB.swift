//
//  HexToRGB.swift
//  DSKit
//
//  Created by David Chavez on 11.01.22.
//

import Foundation
import CoreFoundation

internal func hexToRGB(hex: String) -> (red: CGFloat, green: CGFloat, blue: CGFloat, alpha: CGFloat)? {
    let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
    
    // Check if the hex string is valid
    let regex = "^[0-9a-fA-F]{3}$|^[0-9a-fA-F]{6}$|^[0-9a-fA-F]{8}$"
    let test = NSPredicate(format:"SELF MATCHES %@", regex)
    if !test.evaluate(with: hex) {
        return nil
    }

    var int = UInt64()
    Scanner(string: hex).scanHexInt64(&int)

    let a, r, g, b: UInt64
    switch hex.count {
    case 3: // RGB (12-bit)
        (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
    case 6: // RGB (24-bit)
        (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
    case 8: // RRGGBBAA (32-bit)
        (r, g, b, a) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
    default:
        return nil
    }

    return (CGFloat(r)/255, CGFloat(g)/255, CGFloat(b)/255, CGFloat(a)/255)
}
