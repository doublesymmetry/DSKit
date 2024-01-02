//
//  Color+Hex.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import SwiftUI

extension Color {
    init?(hex: String) {
        guard let (r, g, b, a) = hexToRGB(hex: hex) else {
            return nil
        }

        self.init(.sRGB, red: Double(r), green: Double(g), blue: Double(b), opacity: Double(a))
    }
}
