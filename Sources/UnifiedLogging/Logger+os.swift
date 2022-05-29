//
//  Logger+os.swift
//  
//
//  Created by Jaehong Kang on 2022/05/01.
//

#if canImport(os)
import os

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
public typealias Logger = os.Logger

@available(macOS 11.0, iOS 14.0, watchOS 7.0, tvOS 14.0, *)
extension Logger: LoggerProtocol {
    public typealias LogMessage = OSLogMessage
    public typealias LogLevel = OSLogType

    @inlinable
    public init(label: String, category: String?) {
        self.init(subsystem: label, category: category ?? "")
    }
}

extension OSLogType: LogLevel {
    @inlinable
    public static var trace: OSLogType {
        .debug
    }

    @inlinable
    public static var notice: OSLogType {
        .default
    }

    @inlinable
    public static var warning: OSLogType {
        .default
    }

    @inlinable
    public static var critical: OSLogType {
        .fault
    }
}
#endif
