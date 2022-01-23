import Foundation




extension String {
    
    
    
    /// Localizes a string using self as key.
    public var localized: String { localized() }
    
    
    /// Localizes a string using self as key.
    ///
    /// - Parameters:
    ///   - tableName: the table name (aka Localizable.strings file name without extension).
    /// - Returns: localized string from the appropriate bundle
    public func localized(fromFile tableName: String? = nil) -> String {
        let emptyValue = "No value found"
        let mainBundleValue = NSLocalizedString(self, tableName: tableName, bundle: .main, value: emptyValue, comment: "")
        guard mainBundleValue == emptyValue else { return mainBundleValue }
        return NSLocalizedString(self, tableName: nil, bundle: .module, value: "", comment: "")
    }
    
    
    /// Localizes a string using self as key and injects dynamic arguments.
    ///
    /// - Parameters:
    ///   - tableName: the table name (aka Localizable.strings file name without extension).
    ///   - arguments: dynamic arguments provided for the localized string.
    /// - Returns: localized string with injected arguments.
    public func localized(fromFile tableName: String? = nil, _ arguments: CVarArg...) -> String {
        localized(fromFile: tableName, arguments)
    }
    
    
    /// Localizes a string using self as key and injects dynamic arguments.
    ///
    /// - Parameters:
    ///   - tableName: the table name (aka Localizable.strings file name without extension).
    ///   - arguments: list of arguments provided for the localized string.
    /// - Returns: localized string with injected arguments.
    public func localized(fromFile tableName: String? = nil, _ arguments: [CVarArg]) -> String {
        String(format: localized(fromFile: tableName), arguments: arguments)
    }
    
    
    
}

