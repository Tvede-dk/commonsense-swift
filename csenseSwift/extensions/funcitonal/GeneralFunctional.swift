//
//  GeneralFunctional.swift
//  csenseSwift
//
//  Created by user on 01/08/2018.
//  Copyright © 2018 commonsense. All rights reserved.
//

import Foundation


extension Optional {
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
}
