//
//  URL+QueryTests.swift
//  DSKit
//
//  Created by David Chavez on 19.01.22.
//

import XCTest
@testable import Zebpay

class URL_QueryTests: XCTestCase {
    func testQueryItemsNoParams() throws {
        let testURL = URL(string: "http://example.com")!
        
        XCTAssertEqual(testURL.queryItems, [:])
    }
    
    func testQueryItemsEmptyParams() throws {
        let testURL = URL(string: "http://example.com?")!
        XCTAssertEqual(testURL.queryItems, ["": [""]])
    }
    
    func testQueryItemsEmptyKeyedParams() throws {
        let testURL = URL(string: "http://example.com?name")!
        XCTAssertEqual(testURL.queryItems, ["name": [""]])
    }
    
    func testQueryItemsSingleParam() throws {
        let testURL = URL(string: "http://example.com?name=Test")!
        XCTAssertEqual(testURL.queryItems, ["name": ["Test"]])
    }
    
    func testQueryItemsSingleParamMultipleValues() throws {
        let testURL = URL(string: "http://example.com?name=Test&name=Second")!
        XCTAssertEqual(testURL.queryItems, ["name": ["Test", "Second"]])
    }
    
    func testQueryItemsMultipleParams() throws {
        let testURL = URL(string: "http://example.com?name=Test&second=Test")!
        XCTAssertEqual(testURL.queryItems, ["name": ["Test"], "second": ["Test"]])
    }
}
