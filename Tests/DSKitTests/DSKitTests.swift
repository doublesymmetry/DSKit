import XCTest
@testable import DSKit

final class DSKitTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(DSKit().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
