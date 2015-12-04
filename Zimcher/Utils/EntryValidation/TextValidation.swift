//
//  StringValidation.swift
//  SwiftPort
//
//  Created by Weiyu Huang on 10/28/15.
//  Copyright © 2015 Kappa. All rights reserved.
//

import Foundation

struct IsValid {
    typealias TextValidatorType = (String)->Bool
    private static func validationCreator(filterString: String) -> (input: String) -> Bool
    {
        let predicate = NSPredicate(format: "SELF MATCHES %@", filterString)
        return { predicate.evaluateWithObject($0) }
    }

    static let email = IsValid.validationCreator(Validation.EMAIL_FILTER)
    static let userName = IsValid.validationCreator(Validation.USER_NAME_ALLOWED_CHARS)
    
    static func password(input: String) -> Bool
    {
        return input.characters.count > 6
    }
    
    //used for textfields etc.
    static func hasValidInput(text: String?, @noescape validator: TextValidatorType) -> Bool
    {
        if let t = text?.stringByTrimmingCharactersInSet(NSCharacterSet.whitespaceAndNewlineCharacterSet()) {
            return t == "" ? false : validator(t)
        }
        return false
    }
    
}

protocol Validatable {
    var validatee: String? {get}
    var validator: (String)-> Bool {get}
    var invalidMessage: String {get}
}
