//
// Created by Kasper Tvede on 06/07/2018.
// Copyright (c) 2018 commonsense. All rights reserved.
//

import Foundation


extension Character {
    // Converts the casing of this char to the given caseing
    // (so if the supplied is true => uppercase,
    //      then the resulting chararter will be uppercase, or lowercase if false is supplied)
    // Time complexity O(1) /since we only have 1 char ever.
    //Note: see apples own uses / examples: https://github.com/apple/swift/blob/master/stdlib/public/core/Character.swift#L254
    func toCase(upperCase: Bool) -> Character {
        return upperCase.mapLazy(
            ifTrue: { self.uppercased },
            ifFalse: {self.lowercased})
    }
    
    //This charater as lowercased
    var lowercased: Character {
        if isLowercase {
            return self
        }
        return Character(String(self).lowercased())
    }
    
    //this charater as uppercased
    var uppercased: Character {
        if isUppercase {
            return self
        }
        return Character(String(self).uppercased())
    }
    
    // Returns true if this char is indeed a valid unicode scalar, and not empty, and is indeed uppercase, false otherwise
    var isUppercase : Bool {
        return getUnicodeScalar().useSafe { (scalar) -> Bool? in
            return NSCharacterSet.uppercaseLetters.contains(scalar)
            } ?? false
    }
    
    
    // Returns true if this char is indeed a valid unicode scalar, and not empty, and is indeed lowercase, false otherwise
    var isLowercase: Bool {
        return getUnicodeScalar().useSafe { (scalar) -> Bool? in
            return NSCharacterSet.lowercaseLetters.contains(scalar)
            } ?? false
    }
    
    // if this char is a "regular" char, when converted to a "Character.UnicodeScalarView" is a single value.
    func getUnicodeScalar() -> UnicodeScalar? {
        return self.unicodeScalars.first
    }
}
