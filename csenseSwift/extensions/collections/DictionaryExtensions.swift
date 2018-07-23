//
//  DictionaryExtensions.swift
//  csenseSwift
//
//  Created by Kasper T on 05/11/2017.
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

public extension Dictionary where Key == Int {

    /**
     * Continence method for lookup up a indexPath in a dictionary of type [Int: Array]
     * where the section will be used as the key ,and the row as the index in the array
     */
    public func lookupElement<T>(at: IndexPath) -> T? where Key == Int, Value == [T] {
        return self[at.section]?.getSafe(index: at.row)
    }

    /**
     * Gets the element at the given index (so if we have a sparse array of
     [0 : *, 2 : **] then calling with index of 1 , gives the last element
     */
    public func elementByIndex(index: Int) -> Value? {
        if !isIndexValid(index) {
            return nil
        }
        let key = self.index(startIndex, offsetBy: index)
        return self[key].value
    }

    /**
     * Tells if there is a key with the given index
     */
    public func isIndexValid(_ index: Int) -> Bool {
        return index >= 0 && index < self.count
    }

    /**
     * true if this count is positive( > 0); false if empty.
     */
    public var isNotEmpty: Bool {
        return !isEmpty
    }
}

public extension Dictionary {
    /**
     * safely adds an item for a given key or creates a new array with the item if not presented
     */
    public mutating func addOrCreate<T>(key: Key, item: T) where Value == [T] {
        var list = self[key] ?? []
        list.append(item)
        self.updateValue(list, forKey: key)
    }
}
