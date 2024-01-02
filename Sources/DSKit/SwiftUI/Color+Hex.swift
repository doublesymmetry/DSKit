//
//  Color+Hex.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import SwiftUI

extension Color {
    init(hex: String) {
        let (r, g, b, a) = hexToRGB(hex: hex)
        self.init(.sRGB, red: Double(r), green: Double(g), blue: Double(b), opacity: Double(a))
    }
}
