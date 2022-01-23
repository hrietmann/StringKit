import XCTest
@testable import StringKit

final class LocalizableTests: XCTestCase {
    
    
    
    func test_localized_string_formatting_with_arguments() {
        let string = "test value"
        let arguments: [CVarArg] = [string]
        let key = "Test.Localizable.String"
        let format = key.localized
        let espectedResult = format.replacingOccurrences(of: "%@", with: string)
        
        let sut = key.localized(fromFile: nil, arguments)
        XCTAssertEqual(sut, espectedResult)
    }
    
    
    
}
