//
//  SortedArray.swift
//  csenseSwift
//
//  Created by Kasper T on 10/11/2017.
//  Copyright © 2017 commonsense. All rights reserved.
//

import Foundation

class SortedArray<T> {
    // MARK: variables and types
    typealias SortedArrayIndex = (index: Int, value: T)

    private var data: [SortedArrayIndex] = []

    // MARK: Constructors

    init() {

    }

    // MARK: public functions
    @discardableResult
    func set(value: T, forIndex: Int) -> T? {
        let index = data.binarySearchClosest(key: forIndex, extractor: extractorFunc)
        //overwrite data
        if data.isIndexValid(index) && data[index].index == forIndex {
            let old = data[index]
            data[index] = (forIndex, value)
            return old.value
        } else {
            //add data
            data.insert((forIndex, value), at: index)
            return nil
        }
    }

    @discardableResult
    func remove(forIndex: Int) -> T? {
        let index = data.binarySearch(key: forIndex, extractor: extractorFunc)
        return index.ifNotNil(action: { index in
            return remove(forRawIndex: index)
        })
    }

    @discardableResult
    func remove(forRawIndex: Int) -> T? {
        return data.remove(at: forRawIndex).value
    }

    func get(forIndex: Int) -> T? {
        let index = data.binarySearch(key: forIndex, extractor: extractorFunc)
        return getOpt(index: index)
    }

    func get(forRawIndex: Int) -> T? {
        return getOpt(index: forRawIndex)
    }

    var count: Int {
        return data.count
    }

    // MARK: internal functions
    private func getOpt(index: Int?) -> T? {
        return index.ifNotNil(action: { index in
            return data.getSafe(index: index)?.value
        })
    }

    private let extractorFunc: FunctionResult<SortedArrayIndex, Int> = { (pair: SortedArrayIndex) in
        pair.index
    }
}
