//
//  GradientTests.swift
//  DSKit
//
//  Created by David Chavez on 13.04.21.
//

import XCTest
@testable import DSKit

final class GradientTests: XCTestCase {
    func testColorInit() {
        let gradientColors: [UIColor] = [.clear, .black]
        let gradient = Gradient(colors: gradientColors)

        XCTAssertEqual(gradient.stops.count, 2)
        XCTAssertEqual(gradient.stops.map { $0.color }, gradientColors)
        XCTAssertEqual(gradient.stops.map { $0.location }, [0, 1])
    }

    func testEvenColorDistribution() {
        let gradient = Gradient(colors: [.yellow, .orange, .red, .blue, .purple, .black])

        XCTAssertEqual(gradient.stops.count, 6)
        XCTAssertEqual(gradient.stops.map { $0.location }, [0, 0.2, 0.4, 0.6, 0.8, 1])
    }
}
