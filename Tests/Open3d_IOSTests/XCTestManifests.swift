import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(Open3d_iOSTests.allTests),
    ]
}
#endif
