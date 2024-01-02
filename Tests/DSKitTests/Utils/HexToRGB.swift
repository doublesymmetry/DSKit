//
//  HexToRGB.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import XCTest
@testable import DSKit

class HexToRGBTests: XCTestCase {
    func testHexToRGB() {
        guard let rgb = hexToRGB(hex: "#0C0C1D") else {
            XCTFail("Invalid hex color")
            return
        }
        XCTAssertEqual(rgb.red, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 29.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 1.0, accuracy: 0.001)
    }

    func testHexToRGBWithShortForm() {
        guard let rgb = hexToRGB(hex: "#0C1") else {
            XCTFail("Invalid hex color")
            return
        }
        XCTAssertEqual(rgb.red, 0.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 204.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 17.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 1.0, accuracy: 0.001)
    }

    func testHexToRGBWithAlpha() {
        guard let rgb = hexToRGB(hex: "#0C0C1D80") else {
            XCTFail("Invalid hex color")
            return
        }
        XCTAssertEqual(rgb.red, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.green, 12.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.blue, 29.0/255.0, accuracy: 0.001)
        XCTAssertEqual(rgb.alpha, 128.0/255.0, accuracy: 0.001) // assuming alpha of 80 is 0.5
    }

    func testHexToRGBWithInvalidInput() {
        let rgb = hexToRGB(hex: "#0C0G1D") // G is not a valid hexadecimal character
        XCTAssertNil(rgb, "The function should return nil for invalid input")
    }
}
