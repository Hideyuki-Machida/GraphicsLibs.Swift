import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(GraphicsLibs_SwiftTests.allTests),
    ]
}
#endif
