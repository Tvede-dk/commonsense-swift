//
//  GeneralExtensions.swift
//  csenseSwift
//
//  Created by Kasper T on 07/11/2017.
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

public extension Optional {
    /**
     * Uses the value iff safe (not nil)
     */
    public func ifNotNil(action: Function<Wrapped>) {
        if let safeSelf = self {
            action(safeSelf)
        }
    }

    /**
     * Uses the value iff safe (not nil)
     */

    public func ifNotNil<T>(action: FunctionResult<Wrapped, T?>) -> T? {
        if let safeSelf = self {
            return action(safeSelf)
        }
        return nil
    }

    /**
     * Another name for "iFNotNil"
     */
    public func useSafe(action: Function<Wrapped>) {
        ifNotNil(action: action)
    }

    public func useSafe<T>(action: FunctionResult<Wrapped, T?>) -> T? {
        return ifNotNil(action: action)
    }

}
