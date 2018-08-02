//
//  BoolExtensions.swift
//  csenseIosBase
//
//  Created by Kasper T
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

public extension Bool {

    /**
     * maps a bool to one of the given values depending on the bool's value.
     */
    public func map<T>(ifTrue: T, ifFalse: T) -> T {
        if self {
            return ifTrue
        } else {
            return ifFalse
        }
    }

    /**
     * maps a boolean lazy into either of the given functions depending on the value.
     */
    public func mapLazy<T>(ifTrue: @escaping EmptyFunctionResult<T>,
                           ifFalse: @escaping EmptyFunctionResult<T>) -> T {
        return map(ifTrue: ifTrue, ifFalse: ifFalse)()
    }

    /**
     * Performs the given action iff the value is true, otherwise nothing happens
     */
    public func ifTrue(_ action: EmptyFunction) {
        if self {
            action()
        }
    }

    /**
     * Performs the given action iff the value is false, otherwise nothing happens
     */
    public func ifFalse(_ action: EmptyFunction) {
        if !self {
            action()
        }
    }

}
