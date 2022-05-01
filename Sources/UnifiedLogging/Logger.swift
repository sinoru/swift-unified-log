//
//  Logger.swift
//  Logger
//
//  Created by Jaehong Kang on 2021/08/04.
//

public protocol LoggerProtocol {
    associatedtype LogLevel: UnifiedLogging.LogLevel
    associatedtype LogMessage: ExpressibleByStringLiteral

    init(label: String, category: String?)
    init()

    func log(level: LogLevel, _ message: LogMessage)
}

public protocol LogLevel {
    static var trace: Self { get }
    static var debug: Self { get }
    static var info: Self { get }
    static var notice: Self { get }
    static var warning: Self { get }
    static var error: Self { get }
    static var critical: Self { get }
}

extension LogLevel {
    @inlinable
    public static var allLevels: [Self] {
        [
            Self.trace,
            Self.debug,
            Self.info,
            Self.notice,
            Self.warning,
            Self.error,
            Self.critical
        ]
    }
}
