import XCTest

import recursionTests

var tests = [XCTestCaseEntry]()
tests += recursionTests.allTests()
XCTMain(tests)
