//
//  GeneralExtensions.swift
//  csenseSwift
//
//  Created by Kasper T
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

public extension Optional {

    /**
     * Tells if this optional is nil
     * true means it is nil
     */
    public var isNil: Bool {
        return self == nil
    }

    /**
     * Tells if this optional is not nil
     * true means it is NOT nil
     */
    public var isNotNil: Bool {
        return !isNil
    }

    /**
     * Uses the value iff safe (not nil)
     */
    @discardableResult
    public func ifNotNil<T>(action: FunctionResult<Wrapped, T?>) -> T? {
        if let safeSelf = self {
            return action(safeSelf)
        }
        return nil
    }

    /**
     * Another name for "iFNotNil"
     */

    @discardableResult
    public func useSafe<T>(action: FunctionResult<Wrapped, T?>) -> T? {
        return ifNotNil(action: action)
    }

    /**
     * Returns self if not nil, or the given default value.
     */
    public func valueOr(_ defaultValue: Wrapped) -> Wrapped {
        return self ?? defaultValue
    }

    /**
     * Maps this optional to either of the given values.
     */
    public func map<T>(ifNotNil: T, ifNil: T) -> T {
        if isNotNil {
            return ifNotNil
        } else {
            return ifNil
        }
    }
}
