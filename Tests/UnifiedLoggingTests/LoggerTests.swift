import XCTest
@testable import UnifiedLogging

final class LoggerTests: XCTestCase {
    @available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
    func testSimpleLogging() {
        let logger = Logger()

        Logger.LogLevel.allLevels.forEach {
            logger.log(level: $0, "This is \(String(reflecting: $0)).")
        }
    }
}
