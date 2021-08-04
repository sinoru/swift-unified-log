//
//  Logger.swift
//  Logger
//
//  Created by Jaehong Kang on 2021/08/04.
//

import Foundation
#if canImport(os)
import os
#else
import Logging
#endif

#if canImport(os)
typealias Logger = os.Logger
#else
typealias Logger = Logging.Logger
#endif

extension Logger {
    public init(label: String, category: String?) {
        #if canImport(os)
        self.init(subsystem: label, category: category ?? "")
        #else
        self.init(label: [label, category].compactMap { $0 }.joined(separator: "."))
        #endif
    }
}
