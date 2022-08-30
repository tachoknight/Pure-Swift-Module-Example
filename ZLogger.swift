// Example of a class that is available to callers
final public class ZLogger {
    var prefix: String
    
    public init(_ prefix: String) {
        self.prefix = prefix
    }
    
    public func log<T>(_ object: T) {
        print("\(prefix)\(object)")
    }
}

// Example function that is available to callers
public func JustPrintWhatever(_ stuff: String) {
    print("Okay, got \(stuff)")
}
