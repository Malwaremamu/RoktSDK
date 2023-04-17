import XCTest
@testable import RoktSDK

final class RoktSDKTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(RoktSDK().average(nums: [1,2,3, 4]), 23)
    }
}
