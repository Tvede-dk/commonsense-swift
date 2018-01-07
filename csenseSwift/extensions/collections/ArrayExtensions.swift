//
//  ArrayExtensions.swift
//  csenseSwift
//
//  Created by Kasper T on 04/11/2017.
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

public extension Array {
    /**
     * Tells if there is a key with the given index
     */
    public func isIndexValid(_ index: Int) -> Bool {
        return index >= 0 && index < self.count
    }

    public mutating func insertOrUpdate(index: Int, value: Element) -> Element? {
        let isValidIndex = self.isIndexValid(index)
        let result = getSafe(index: index)
        if isValidIndex {
            self[index] = value
        } else {
            self.insert(value, at: index)
        }
        return result
    }

    public func getSafe(index: Int) -> Element? {
        if isIndexValid(index) {
            return self[index]
        } else {
            return nil
        }
    }
    /**
     * true if this count is positive( > 0); false if empty.
     */
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}

public extension Optional where Wrapped: Collection {
    /**
     *
     */
    public var countOrZero: Wrapped.IndexDistance {
        return self?.count ?? 0
    }
}

public func += <T>(left: inout [T], right: T) {
    left.append(right)
}
