//
//  File.swift
//  
//
//  Created by Hans Rietmann on 23/01/2022.
//

import XCTest
@testable import StringKit




final class PhoneNumberFormatTests: XCTestCase {
    
    
    func test_correct_phone_number_formats() {
        
        let number1 = "1112223333"
        let number2 = "+330 781 619 713"
        let number3 = "+33 07 81 61 97 13"
        let number4 = "33 078 161 9713"
        let number5 = "111-222 3333"
        let number6 = "111 222 3333"
        let number7 = "(111) 222-3333"
        
        XCTAssertTrue(number1.isValidPhoneNumber)
        XCTAssertTrue(number2.isValidPhoneNumber)
        XCTAssertTrue(number3.isValidPhoneNumber)
        XCTAssertTrue(number4.isValidPhoneNumber)
        XCTAssertTrue(number5.isValidPhoneNumber)
        XCTAssertTrue(number6.isValidPhoneNumber)
        XCTAssertTrue(number7.isValidPhoneNumber)
    }
    
    func test_correct_local_phone_number_formats() {
        
        let localUS = "202-555-0185"
        let lcoalUK = "01632 960485"
        let lcoalCA = "613-555-0118"
        let localAU = "1900 654 321"
        let localHU = "06 55 168 251"
        let localIR = "020 917 7286"
        let localCN = "591 485 9304"
        let localFR = "07 12 34 56 67"
        
        XCTAssertTrue(localUS.isValidPhoneNumber)
        XCTAssertTrue(lcoalUK.isValidPhoneNumber)
        XCTAssertTrue(lcoalCA.isValidPhoneNumber)
        XCTAssertTrue(localAU.isValidPhoneNumber)
        XCTAssertTrue(localHU.isValidPhoneNumber)
        XCTAssertTrue(localIR.isValidPhoneNumber)
        XCTAssertTrue(localCN.isValidPhoneNumber)
        XCTAssertTrue(localFR.isValidPhoneNumber)
    }
    
    func test_correct_international_phone_number_formats() {
        
        let internationalUS = "+1-202-555-0185"
        let internationalUK = "+44 1632 960485"
        let internationalCA = "+1-613-555-0118"
        let internationalAU = "+61 1900 654 321"
        let internationalHU = "+36 55 168 251"
        let internationalIR = "+353 20 917 7286"
        let internationalCN = "+86 591 485 9304"
        let internationalFR = "+33 7 12 34 56 67"
        
        XCTAssertTrue(internationalUS.isValidPhoneNumber)
        XCTAssertTrue(internationalUK.isValidPhoneNumber)
        XCTAssertTrue(internationalCA.isValidPhoneNumber)
        XCTAssertTrue(internationalAU.isValidPhoneNumber)
        XCTAssertTrue(internationalHU.isValidPhoneNumber)
        XCTAssertTrue(internationalIR.isValidPhoneNumber)
        XCTAssertTrue(internationalCN.isValidPhoneNumber)
        XCTAssertTrue(internationalFR.isValidPhoneNumber)
    }
    
    func test_wrong_phone_numbers_formats() {
        
        let wrongInternational = "*33 7 12 34 56 67"
        let wrongNumber = "+330 781 619 713a"
        let wrongLocal = "18"
        
        XCTAssertFalse(wrongInternational.isValidPhoneNumber)
        XCTAssertFalse(wrongNumber.isValidPhoneNumber)
        XCTAssertFalse(wrongLocal.isValidPhoneNumber)
    }
    
    
}
