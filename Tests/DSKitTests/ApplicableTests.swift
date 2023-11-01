//
//  ApplicableTests.swift
//  
//
//  Created by Fabian Sulzbacher on 29.04.21.
//
import XCTest
@testable import DSKit

final class ApplicableTests: XCTestCase {
    func testApplyBackgroundColor() {
        let redView = UIView().apply {
            $0.backgroundColor = .red
        }
        XCTAssertEqual(redView.backgroundColor, .red)
    }
}
