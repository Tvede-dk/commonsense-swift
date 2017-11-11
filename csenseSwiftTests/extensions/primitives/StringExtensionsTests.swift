//
// Created by Kasper T on 09/11/2017.
// Copyright (c) 2017 commonsense. All rights reserved.
//

import Foundation
import csenseTests
import XCTest
@testable import csenseSwift

class StringExtensionsTests: XCTestCase {

    func testIsNilOrBlank() {
        let optStringEmpty1 : String? = ""
        optStringEmpty1.isNilOrBlank.assert(true)

        let optStringEmpty2 : String? = " "
        optStringEmpty2.isNilOrBlank.assert(true)

        let optStringEmpty3 : String? = "   "
        optStringEmpty3.isNilOrBlank.assert(true)

        let optStringNonEmpty1 :String?  = " a"
        optStringNonEmpty1.isNilOrBlank.assert(false)

        let optStringNonEmpty2 :String?  = "abc"
        optStringNonEmpty2.isNilOrBlank.assert(false)

        let optStringNonEmpty3 :String?  = "213"
        optStringNonEmpty3.isNilOrBlank.assert(false)

    }

    func testIsBlank(){
        "".isBlank.assert(true)
        " ".isBlank.assert(true)
        "  ".isBlank.assert(true)


        "a".isBlank.assert(false)
        "ab".isBlank.assert(false)
        "abc".isBlank.assert(false)
        " abc ".isBlank.assert(false)
        "  abc ".isBlank.assert(false)
    }

}
