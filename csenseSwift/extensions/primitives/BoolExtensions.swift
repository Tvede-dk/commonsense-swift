//
//  BoolExtensions.swift
//  csenseIosBase
//
//  Created by Kasper T on 03/11/2017.
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation
public extension Bool {
    
    /**
     * maps a bool to one of the given values depending on the bool's value.
     *
     */
    public  func map<T>(ifTrue : T, ifFalse : T ) -> T {
        if self {
            return ifTrue
        } else{
            return ifFalse
        }
    }
    
    
}
