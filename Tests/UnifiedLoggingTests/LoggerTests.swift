import XCTest
@testable import UnifiedLogging

final class LoggerTests: XCTestCase {
    func testSimpleLogging() {
        let logger = Logger()

        Logger.LogLevel.allLevels.forEach {
            logger.log(level: $0, "This is \(String(reflecting: $0)).")
        }
    }
}
