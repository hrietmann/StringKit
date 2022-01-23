//
//  File.swift
//  
//
//  Created by Hans Rietmann on 23/01/2022.
//

import XCTest
@testable import StringKit




final class UsernameFormatTests: XCTestCase {
    
    
    func test_correct_usernames_formats() {
        
        let englishGivenName = "John"
        let englishFullName = "John Appleseed"
        let frenchName = "Michel-François L'Opéra de Corse"
        let japaneseName = "あきひと"
        let chineseName = "彩红芬"
        let arabicName = "عاليةعيسى"
        let greekName = "Μέριανος Νίκοςfg"
        
        XCTAssertTrue(englishGivenName.isValidUsername)
        XCTAssertTrue(englishFullName.isValidUsername)
        XCTAssertTrue(frenchName.isValidUsername)
        XCTAssertTrue(japaneseName.isValidUsername)
        XCTAssertTrue(chineseName.isValidUsername)
        XCTAssertTrue(arabicName.isValidUsername)
        XCTAssertTrue(greekName.isValidUsername)
    }
    
    func test_wrong_usernames_formats() {
        
        let wrongEnglishName = "John Appleseed1"
        let wrongFrenchName = "François Le Mérite1"
        let wrongJapaneseName = "あきひと1"
        let wrongChineseName = "彩红芬1"
        let wrongArabicName = "عاليةعيسى1"
        let wrongGreekName = "Μέριανος Νίκοςfg1"
        let wirred = "§&@jhdkjfsd dfjslkdjfld fvsdjvfj"
        
        XCTAssertFalse(wrongEnglishName.isValidUsername)
        XCTAssertFalse(wrongFrenchName.isValidUsername)
        XCTAssertFalse(wrongJapaneseName.isValidUsername)
        XCTAssertFalse(wrongChineseName.isValidUsername)
        XCTAssertFalse(wrongArabicName.isValidUsername)
        XCTAssertFalse(wrongGreekName.isValidUsername)
        XCTAssertFalse(wirred.isValidUsername)
    }
    
    
}
