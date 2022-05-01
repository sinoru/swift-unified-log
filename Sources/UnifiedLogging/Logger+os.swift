//
//  Logger+os.swift
//  
//
//  Created by Jaehong Kang on 2022/05/01.
//

#if canImport(os)
import os

public typealias Logger = os.Logger

extension Logger: LoggerProtocol {
    public typealias LogMessage = OSLogMessage
    public typealias LogLevel = OSLogType

    public init(label: String, category: String?) {
        self.init(subsystem: label, category: category ?? "")
    }
}

extension OSLogType: LogLevel {
    public static var trace: OSLogType {
        .debug
    }

    public static var notice: OSLogType {
        .info
    }

    public static var warning: OSLogType {
        .default
    }

    public static var critical: OSLogType {
        .fault
    }
}
#endif
