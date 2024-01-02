//
//  UIView+Parent.swift
//  DSKit
//
//  Created by David Chavez on 1/2/24.
//

import XCTest
import UIKit
@testable import DSKit

class ParentViewControllerTests: XCTestCase {
    func testParentViewControllerSimpleCase() {
        let parent = UIViewController()
        let child = UIView()
        parent.view.addSubview(child)

        XCTAssert(child.parentViewController === parent)
    }

    func testParentViewControllerNestedCase() {
        let parent = UIViewController()
        let child = UIView()
        let grandChild = UIView()

        parent.view.addSubview(child)
        child.addSubview(grandChild)

        XCTAssert(grandChild.parentViewController === parent)
    }
}
