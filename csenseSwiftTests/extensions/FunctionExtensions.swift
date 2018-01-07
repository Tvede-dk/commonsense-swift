//
// Created by Kasper T on 09/12/2017.
// Copyright (c) 2017 commonsense. All rights reserved.
//

import Foundation
import csenseTests
@testable import csenseSwift
import XCTest

class FunctionExtensionsTests: XCTestCase {
    func testIsAnyNotNil() {
        isAnyNotNil(nil, "").assert(true)
        isAnyNotNil("nil", "").assert(true)
        isAnyNotNil("nil", "", 23).assert(true)
        isAnyNotNil(nil).assert(false)
        isAnyNotNil().assert(true)
    }

    func testIsAnyNil() {
        isAnyNil(nil, "").assert(true)
        isAnyNil("nil", "").assert(false)
        isAnyNil("nil", "", nil).assert(true)
        isAnyNil("nil", "", 23).assert(false)
        isAnyNil(nil).assert(true)
        isAnyNil().assert(false)
    }
}
