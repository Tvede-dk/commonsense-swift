//
// Created by Kasper T on 06/11/2017.
// Copyright (c) 2017 commonsense. All rights reserved.
//

import Foundation

public extension Optional where Wrapped == String {

    /**
     *Returns true iff the string is nil or if it is blank (only consisting of whitespace).
     */
    public var isNilOrBlank: Bool {
        return self?.isBlank != false
    }
}

public extension String {
    /**
     * returns true iff the string is not empty (contains something)
     */
    public var isNotEmpty: Bool {
        return !isEmpty
    }

    /**
     * tells if the string only contains whitespace characters, if not then this is false
     */
    public var isBlank: Bool {
        return self == "" || self.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines).isEmpty
    }

    /**
     * tells if the string does not only contains whitespace characters, if not then this is false
     */
    public var isNotBlank: Bool {
        return !isBlank
    }

    /**
     * Url encodes a string, such that it can be used as parameters (eg query strings ect).
     */
    public func urlEncoded() -> String? {
        return self.addingPercentEncoding(withAllowedCharacters: .urlFragmentAllowed)
    }

    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    public subscript(index: UInt) -> Character? {
        guard index < count else {
            return nil
        }
        return self[String.Index(encodedOffset: Int(index))]
    }

    /// Returns the element at the specified index iff it is within bounds, otherwise nil.
    public subscript(index: Int) -> Character? {
        guard index >= 0 else {
            return nil
        }
        return self[index.toUInt()]
    }

    ///
    /// Simple shorthand for data(using encoding).
    /// default encoding is utf16 due to it being the standard
    ///
    public func toData(encoding: String.Encoding = .utf16) -> Data? {
        return data(using: encoding)
    }

    /// The length of the string (its count).
    ///TODO should be unit ? since strings length cannot be negative ?? hmm and insert standard link
    // returns the "length" by the standard

    public var length: Int {
        return self.count
    }

}
