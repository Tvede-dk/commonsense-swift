//
// Created by Kasper T on 06/12/2017.
// Copyright (c) 2017 commonsense. All rights reserved.
//

import Foundation
@testable import csenseSwift
import XCTest
import csenseTests

public class ArrayExtensionsTests: XCTestCase {

    func testOptionalArrayCount() {
        let arr: Array<Int>? = []
        arr.countOrZero.assert(0)
    }
}