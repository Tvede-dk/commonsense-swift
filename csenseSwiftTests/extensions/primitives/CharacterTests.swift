//
//  CharacterTests.swift
//  csenseSwiftTests
//
//  Created by user on 01/08/2018.
//  Copyright © 2018 commonsense. All rights reserved.
//

import Foundation
import XCTest
@testable import csenseSwift
import csenseTests
class CharacterTests: XCTestCase {
    
    func testLowercased(){
        Character("A").lowercased.assert(Character("a"))
        Character("a").lowercased.assert(Character("a"))
    }
    
    func testUppercased(){
        Character("A").uppercased.assert(Character("A"))
        Character("a").uppercased.assert(Character("A"))
    }
    
    func testToCase(){
        Character("A").toCase(upperCase: true).assert(Character("A"))
        Character("A").toCase(upperCase: false).assert(Character("a"))
        Character("a").toCase(upperCase: true).assert(Character("A"))
        Character("a").toCase(upperCase: false).assert(Character("a"))
    }
    
    func testIsUppercase(){
        Character("A").isLowercase.assert(true)
        Character("a").isLowercase.assert(false)
    }
    
    func testIsLowercase(){
        Character("A").isLowercase.assert(false)
        Character("a").isLowercase.assert(true)
    }
}
