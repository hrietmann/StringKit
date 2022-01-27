//
//  File.swift
//  
//
//  Created by Hans Rietmann on 23/01/2022.
//

import Foundation





extension String {
    
    
    
    public var isValidEmail: Bool { matches(to: #"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$"#) }
    
    
    public var isValidUsername: Bool {
        let nameModule = #"?+ ?[\s,.'\-]?+ ?[a-zA-Z\p{L}]"#
        let modules = (1...50).map { _ in nameModule }.joined()
        let format = #"^[A-Za-z\p{L}]\#(modules)*$"#
        return matches(to: format)
    }
    
    
    public var isValidPhoneNumber: Bool { matches(to: #"^(\+?|00|0|\(?)[1-9][0-9 \-\(\)\.]{7,32}$"#) }
    
    
    public func isValidPassword(with constraints: [PasswordConstraint]) -> Bool {
        let charactersCount = constraints.contains(.atLeast8Characters) ? 8 : 4
        let uppercase = constraints.contains(.atLeastOneUppercaseLetter) ? #"(?=.*?[A-Z])"# : ""
        let lowercase = constraints.contains(.atLeastOneLowercaseLetter) ? #"(?=.*?[a-z])"# : ""
        let digits = constraints.contains(.atLeastOneDigits) ? #"(?=.*?[0-9])"# : ""
        let specialCharacters = constraints.contains(.atLeastOneSpecialCharacter) ? #"(?=.*?[#?!@$%^&*-.,:/\;€§<>{}'"])"# : ""
        return matches(
            to: #"^\#(uppercase)\#(lowercase)\#(digits)\#(specialCharacters).{\#(charactersCount),}$"#
        )
    }
    
    
    public func isValidPassword(with constraints: PasswordConstraint...) -> Bool
    { isValidPassword(with: constraints) }
    
    
    public var isValidStrongPassword: Bool { isValidPassword(with: PasswordConstraint.allCases) }
    
    
    public var isValidSimplePassword: Bool { isValidPassword(with: .atLeast8Characters) }
    
    
    public var isValidDate: Bool { matches(to: #"^\d{1,2}[\/-]\d{1,2}[\/-]\d{4}$"#) }
    
    
    func matches(to format: String) -> Bool
    { NSPredicate(format:"SELF MATCHES %@", format).evaluate(with: self) }
    
    
    
}
