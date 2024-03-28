//
//  UIColor+Hex.swift
//  DSKit
//
//  Created by David Chavez on 3/28/24.
//

import XCTest
@testable import DSKit

final class UIColorHexTests: XCTestCase {
    func testColorHex() {
        XCTAssertEqual(UIColor.white.hex, "#ffffff")
        XCTAssertEqual(UIColor.black.hex, "#000000")
    }
}
