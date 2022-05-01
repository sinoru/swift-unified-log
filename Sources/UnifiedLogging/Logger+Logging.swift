//
//  Logger+Logging.swift
//  
//
//  Created by Jaehong Kang on 2022/05/01.
//

#if canImport(Logging)
import Foundation
import Logging

public typealias Logger = Logging.Logger

extension Logger: LoggerProtocol {
    public typealias LogMessage = Message
    public typealias LogLevel = Level

    @inlinable
    public init(label: String, category: String?) {
        self.init(label: [label, category].compactMap { $0 }.joined(separator: "."))
    }

    @inlinable
    public init() {
        self.init(label: Bundle.main.bundleIdentifier ?? "")
    }

    @_transparent
    public func log(level: Level, _ message: Message) {
        log(level: level, message, metadata: nil, source: nil)
    }
}

extension Logger.Level: LogLevel { }
#endif
