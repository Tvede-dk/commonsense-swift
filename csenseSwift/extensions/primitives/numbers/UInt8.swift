//
// Created by Kasper Tvede
// Copyright (c) 2018 commonsense. All rights reserved.
//

import Foundation

public extension UInt8 {
    //creates a string from this hex string;
    // if anything goes wrong, an empty string is returned.
    //otherwise the hex representation of the bytes, in the given case (defaults to upper case)
    public func toHexString(useUpperCase: Bool = true) -> String {
        let hexCharsAsString = useUpperCase.map(ifTrue: "0123456789ABCDEF", ifFalse: "0123456789abcdef")
        let lowerChar: Character? = hexCharsAsString[lowerPart.toUInt()]
        let upperChar: Character? = hexCharsAsString[upperPart.toUInt()]
        guard let lower = lowerChar, let upper = upperChar else {
            return ""
        }
        return String([lower, upper])
    }

    //returns the 4 lower bits
    public var lowerPart: UInt8 {
        return self & 0x0F
    }

    //the 4 upper bits
    public var upperPart: UInt8 {
        return self / 16
    }

    //shortcut for UInt(self) akk UInt(someValue)
    public func toUInt() -> UInt {
        return UInt(self)
    }

}
