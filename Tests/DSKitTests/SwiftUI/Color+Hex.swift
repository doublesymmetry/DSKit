//
//  Color+Hex.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import XCTest
@testable import DSKit

class HexToRGBTests: XCTestCase {
    func testHexToRGB() {
        let rgb = hexToRGB(hex: "#0C0C1D")
        XCTAssertEqual(rgb.red, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 29.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 1.0, accuracy: 0.001)
    }

    func testHexToRGBWithShortForm() {
        let rgb = hexToRGB(hex: "#0C1")
        XCTAssertEqual(rgb.red, 0.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 204.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 17.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 1.0, accuracy: 0.001)
    }

    func testHexToRGBWithAlpha() {
        let rgb = hexToRGB(hex: "#0C0C1D80")
        XCTAssertEqual(rgb.red, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 29.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 128.0/255.0, accuracy: 0.001)
    }
}
