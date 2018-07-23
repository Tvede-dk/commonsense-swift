//
//  CollectionExtensions.swift
//  csenseSwift
//
//  Created by Kasper T on 07/01/2018.
//  Copyright © 2018 commonsense. All rights reserved.
//

import Foundation

public typealias IndexGenerator<T, U> = (_ element: T, _ index: Int) -> U
public typealias ForeachIndexedIterator<T> = (_ element: T, _ index: Int) -> Void

public extension Collection {
    /**
     * Maps this collection, given the item and the index in transformer.
     */
    public func mapIndex<T>(generator: IndexGenerator<Element, T>) -> [T] {
        var counter = 0
        return map { (element: Element) -> T in
            let result = generator(element, counter)
            counter += 1
            return result
        }
    }

    /**
     *Iterates though the collection with the index in the callback as well.
     */
    public func foreachIndexed(iterator: ForeachIndexedIterator<Element>) {
        var counter = 0
        return forEach { (element: Element) in
            iterator(element, counter)
            counter += 1
        }
    }

    /**
     * true if this count is positive( > 0); false if empty.
     */
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}
