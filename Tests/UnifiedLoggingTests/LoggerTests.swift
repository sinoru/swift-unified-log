import XCTest
@testable import UnifiedLogging

final class LoggerTests: XCTestCase {
    func testSimpleLogging() {
        let logger = Logger()
        logger.debug("This is debug.")
    }
}
