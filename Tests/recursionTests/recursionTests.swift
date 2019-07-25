import XCTest
@testable import recursion

final class recursionTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(recursion().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
