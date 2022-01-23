//
//  File.swift
//  
//
//  Created by Hans Rietmann on 23/01/2022.
//

import Foundation




public enum PasswordConstraint: CaseIterable {
    case atLeast8Characters
    case atLeastOneLowercaseLetter
    case atLeastOneUppercaseLetter
    case atLeastOneDigits
    case atLeastOneSpecialCharacter
}
