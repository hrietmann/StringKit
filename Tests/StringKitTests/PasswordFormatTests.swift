//
//  File.swift
//  
//
//  Created by Hans Rietmann on 27/01/2022.
//

import XCTest
@testable import StringKit

final class PasswordFormatTests: XCTestCase {
    
    
    
    func test_correct_password_formats() {
        
        let password1 = "@Azer1234"
        let password2 = "azErT1234'com"
        let password3 = "1a2Z3e4R<é§!"
        let password4 = "welComeH0me!"
        
        XCTAssertTrue(password1.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertTrue(password2.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertTrue(password3.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertTrue(password4.isValidPassword(with: PasswordConstraint.allCases))
    }
    
    func test_wrong_password_formats() {
        
        let password1 = "aaa"
        let password2 = "abcdefgh"
        let password3 = "Abcdefgh"
        let password4 = "Abcdefgh1"
        let password5 = "1111&1111A"
        
        XCTAssertFalse(password1.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertFalse(password2.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertFalse(password3.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertFalse(password4.isValidPassword(with: PasswordConstraint.allCases))
        XCTAssertFalse(password5.isValidPassword(with: PasswordConstraint.allCases))
    }
    
    
    
}
