# swift-unified-log

This library will make you log with a single line with all benefits of os.Logging, swift-log features.

## Getting started

If you have a server-side Swift application, or maybe a cross-platform (for example Linux & macOS) app/library, and you would like to log, we think targeting this logging API package is a great idea. Below you'll find all you need to know to get started.

#### Adding the dependency

`swift-unified-log` is designed for Swift 5.3 and later. To depend on the logging API package, you need to declare your dependency in your `Package.swift`:

```swift
.package(url: "https://github.com/sinoru/swift-unified-log.git", from: "1.0.0"),
```

and to your application/library target, add `"UnifiedLogging"` to your `dependencies`, e.g. like this:

```swift
// Target syntax for Swift up to version 5.1
.target(name: "BestExampleApp", dependencies: ["UnifiedLogging"]),

// Target for Swift 5.2
.target(name: "BestExampleApp", dependencies: [
    .product(name: "UnifiedLogging", package: "swift-unified-log")
],
```
