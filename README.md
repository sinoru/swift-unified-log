# swift-unified-log

[![Test](https://github.com/sinoru/swift-unified-log/actions/workflows/test.yml/badge.svg)](https://github.com/sinoru/swift-unified-log/actions/workflows/test.yml)

This library will make you log with a single line with all benefits of os.Logging, swift-log features.

## Getting started

If you have a server-side Swift application, or maybe a cross-platform (for example Linux & macOS) app/library, and you would like to log, we think targeting this logging API package is a great idea. Below you'll find all you need to know to get started.

#### Adding the dependency

`swift-unified-log` is designed for Swift 5.3 and later. To depend on the logging API package, you need to declare your dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/sinoru/swift-unified-log.git", from: "2.0.2"),
```

and to your application/library target, add `"UnifiedLogging"` to your `dependencies`, e.g. like this:

```swift
.target(name: "BestExampleApp", dependencies: [
    .product(name: "UnifiedLogging", package: "swift-unified-log")
],
```

#### Let's log

```swift
// 1) let's import the logging API package
import UnifiedLogging

// 2) we need to create a logger
let logger = Logger()

// 3) we're now ready to use it
logger.log(level: .info, "Hello World!")
```
