//
//  File.swift
//  
//
//  Created by Hans Rietmann on 23/01/2022.
//

import XCTest
@testable import StringKit



final class EmailFormatTests: XCTestCase {
    
    
    
    func test_correct_email_formats() {
        
        let email1 = "john.appleseed@apple.com"
        let email2 = "johnappleseed@apple.com"
        let email3 = "johnappleseed1234@apple.com"
        let email4 = "JOHNAPPLESEED@APPLE.COM"
        
        XCTAssertTrue(email1.isValidEmail)
        XCTAssertTrue(email2.isValidEmail)
        XCTAssertTrue(email3.isValidEmail)
        XCTAssertTrue(email4.isValidEmail)
    }
    
    func test_wrong_email_formats() {
        
        let email1 = "john appleseed@apple.com"
        let email2 = "john.appleseed@apple"
        let email3 = "apple.com"
        let email4 = "john.appleseed#apple.com"
        let email5 = "john&appleseed@apple.com"
        
        XCTAssertFalse(email1.isValidEmail)
        XCTAssertFalse(email2.isValidEmail)
        XCTAssertFalse(email3.isValidEmail)
        XCTAssertFalse(email4.isValidEmail)
        XCTAssertFalse(email5.isValidEmail)
    }
    
    
    
}
